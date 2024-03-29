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

# first run the configuration of zypper
include_recipe 'zypper::default'

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
      puts "REPO GROUP: #{g}"
      node.default['packages']['opensuse'][dist_version][g]['repositories'].each do |r|
        puts "REPO DEFINITION: #{r}"
        repo_info = node['packages']['opensuse'][dist_version]['repo'][r]
        if repo_info['autorefresh'] == true
          z_autoref = 1
        else
          z_autoref = 0
        end
        puts "REPO REFRESH: #{z_autoref}"
        if repo_info['enabled'] == true
          z_enable = 1
        else
          z_enable = 0
        end
        puts "REPO ENABLED: #{z_enable}"
        if repo_info['gpgcheck'] == true
          z_gpgcheck = 1
        else
          z_gpgcheck = 0
        end
        puts "REPO GPG CHECK: #{z_gpgcheck}"
        if repo_info['keeppackages'] == true
          z_keeppackages = 1
        else
          z_keeppackages = 0
        end
        puts "REPO KEEP: #{z_keeppackages}"
        z_name        = repo_info['name']
        puts "REPO NAME: #{z_name}"
        z_type        = repo_info['type']
        z_key         = repo_info['gpgkey']
        z_url         = repo_info['url']
        z_priority    = repo_info['priority']
        z_description = repo_info['description']
        if ! File.exist?("#{repo_info['file_name']}.repo")
          var_hash = {
            :autorefresh => z_autoref,
            :enabled => z_enable,
            :gpgcheck => z_gpgcheck,
            :header => z_name,
            :keeppackages => z_keeppackages,
            :type => z_type,
            :key => z_key,
            :url => z_url,
            :priority => z_priority,
            :description => z_description,
          }
          Chef::Resource::Template.new(repo_info['name'], run_context).tap do |z|
            z.cookbook 'packages'
            z.path "/etc/zypp/repos.d/#{repo_info['file_name']}.repo"
            z.source 'zypper_repo.erb'
            z.mode repo_info['mode']
            z.owner 'root'
            z.group 'root'
            z.variables var_hash
          end.run_action :create
        end
      end
    end
  end
end

execute 'zypper ref' do
  command '/usr/bin/zypper --gpg-auto-import-keys --no-color ref'
  cwd '/var/lib/empty'
  ignore_failure true
#  only_if { ::File.stat('/var/cache/zypp/raw').ctime < Time.now - 60*60*4 }
end

needed_packages.each do |p|
  zypper_package p do
    allow_downgrade false
    ignore_failure true
    action :install
    only_if { Time.now.hour >= 0 && Time.now.hour < 5 }
  end
end
