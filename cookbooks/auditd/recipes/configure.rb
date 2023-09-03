#
# Cookbook:: atd
# Recipe:: configure
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

directories = [
  '/etc/audit',
  '/etc/audit/rules.d'
]

directories.each do |d|
  directory d do
    action :create
    owner 'root'
    group 'root'
    mode '0750'
  end
end

cookbook_file '/etc/audit/audisp-remote.conf' do
  mode '0640'
  owner 'root'
  group 'root'
  source 'audisp-remote.conf'
end

cookbook_file '/etc/audit/auditd.conf' do
  mode '0640'
  owner 'root'
  group 'root'
  source 'auditd.conf'
end

plugin_configs = [
  'af_unix.conf',
  'au-remote.conf',
  'audispd-zos-remote.conf',
  'syslog.conf'
]

plugin_configs.each do |f|
  cookbook_file "/etc/audit/plugins.d/#{f}" do
    mode '0640'
    owner 'root'
    group 'root'
    source 'auditd.conf'
  end
end

cookbook_file '/etc/audit/rules.d/audit.rules' do
  mode '0640'
  owner 'root'
  group 'root'
  source 'audit.rules'
end
