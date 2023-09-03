#
# Cookbook:: atd
# Recipe:: service
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

service 'augenrules' do
  action [:enable, :start]
  subscribes :reload, 'file[/etc/audit/rules.d/audit.rules]', :immediately
end

service 'auditd' do
  action [:enable, :start]
  subscribes :reload, [
    'file[/etc/audit/auditd.conf]',
    'file[/etc/audit/plugins.d/af_unix.conf]',
    'file[/etc/audit/plugins.d/au-remote.conf]',
    'file[/etc/audit/plugins.d/audispd-zos-remote.conf]',
    'file[/etc/audit/plugins.d/syslog.conf]'
  ], :immediately
end
