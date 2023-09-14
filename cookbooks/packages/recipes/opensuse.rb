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
    node.run_state['repo_groups'].each do |rg|
      node.default['packages']['opensuse'][dist_version][rg]['repositories'].each do |r|
        repo_info = node['packages']['opensuse'][dist_version]['repo'][r]
        if ! File.exist?(repo_info['file_name'])
          Chef::Resource::ZypperRepository.new(repo_info['file_name'], run_context).tap do |zypp_repo|
            zypp_repo.autorefresh false
            zypp_repo.baseurl repo_info['url']
            zypp_repo.description repo_info['description']
            zypp_repo.enabled true
            zypp_repo.gpgautoimportkeys true
            zypp_repo.gpgcheck true
            zypp_repo.keeppackages false
            zypp_repo.repo_name repo_info['name']
            zypp_repo.type repo_info['type']
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
