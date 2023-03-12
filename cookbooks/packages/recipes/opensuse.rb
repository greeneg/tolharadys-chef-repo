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
Chef::Log.info "Distribution version: #{dist_version}"
node['roles'].each do |n|
    Chef::Log.info "Role: #{n}"
    if n == 'default'
        repo_group = %w( core )
    end
    repo_group.each do |rg|
        Chef::Log.info "Repository Group: #{rg}"
        node['packages']['opensuse'][dist_version][rg]['repositories'].each do |r|
            Chef::Log.info "Repository: #{r}"
            repo = node['packages']['opensuse'][dist_version]['repo'][r]
            zypper_repository node['packages']['opensuse'][dist_version]['repo'][r] do
                Chef::Log.info "Data: #{node['packages']['opensuse'][dist_version]['repo'][r]}"
                autorefresh false
                baseurl repo['url']
                description repo['description']
                enabled true
                gpgautoimportkeys true
                gpgcheck true
                keeppackages false
                priority repo['priority']
                repo_name repo['name']
                type repo['type']
                action :create
                not_if { ::File.exist?(repo['file_name']) }
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
