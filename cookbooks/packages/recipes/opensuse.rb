#
# Cookbook:: packages
# Recipe:: opensuse
#
# Copyright:: 2023, Gary Greene
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

needed_packages = [
  'acl',
  'attr',
  'nano',
  'man-pages',
  'coreutils',
  'haveged',
  'acct',
  'terminfo',
  'gpm',
  'screen',
  'gpart',
  'nfs4-acl-tools',
  'xfsdump',
  'keyutils',
  'procinfo',
  'bash-completion',
  'zsh',
  'zsh-htmldoc',
  'dos2unix',
  'lynx',
  'man-pages-posix',
  'pwgen',
  'sharutils',
  'xdelta',
  'zip',
  'alpine',
  'mlocate',
  'irssi',
  'links',
  'mc',
  'ncftp',
  'pico',
  'pinfo',
  'units',
  'star',
  'iotop',
  'htop',
  'expect',
  'logrotate',
]

# first, lets get our repos dealt with
dist_version = platform_version

# remove unwanted repo definitions
node['packages']['opensuse'][dist_version]['unwanted_repo_definitions'].each do |f|
  file f do
    action :delete
  end
end

ruby_block 'calculate repositories' do
  block do
    repo_group = []
    node['roles'].each do |n|
      if n == 'default'
        repo_group.push('core')
      else
        repo_group.push(n)
      end
    end
    node.run_state['repo_groups'] = repo_group
  end
end

ruby_block 'process repositories' do
  block do
    repos = []
    node.run_state['repo_groups'].each do |g|
      node.default['packages']['opensuse'][dist_version][g]['repositories'].each do |r|
        repo_info = node['packages']['opensuse'][dist_version]['repo'][r]
        if ! File.exist?("#{repo_info['file_name']}.repo")
          Chef::Resource::ZypperRepository.new(repo_info['file_name'], run_context).tap do |z|
            z.autorefresh repo_info['autorefresh']
            z.baseurl repo_info['url']
            z.description repo_info['description']
            z.enabled repo_info['enabled']
            z.gpgautoimportkeys repo_info['gpgautoimportkeys']
            z.gpgcheck repo_info['gpgcheck']
            z.keeppackages repo_info['keeppackages']
            z.repo_name repo_info['name']
            z.priority repo_info['priority']
            z.type repo_info['type']
          end.run_action :create
        end
      end
    end
  end
end

execute 'zypper ref' do
  command '/usr/bin/zypper ref'
  cwd '/var/lib/empty'
  ignore_failure true
  only_if { ::File.stat('/var/cache/zypp/raw').ctime < Time.now - 60*60*4 }
end

needed_packages.each do |p|
  zypper_package p do
    allow_downgrade false
    ignore_failure true
    action :install
    only_if { Time.now.hour >= 0 && Time.now.hour < 5 }
  end
end
