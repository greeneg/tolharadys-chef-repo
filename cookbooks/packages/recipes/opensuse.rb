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


needed_packages.each do |p|
    zypper_package p do
        allow_downgrade false
        action :upgrade
    end
end
