#
# Cookbook:: avahi_daemon
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

template '/etc/avahi/avahi-daemon.conf' do
  action :create
  mode '0644'
  owner 'root'
  group 'root'
  source 'avahi-daemon.conf.erb'
  variables(
    host_name: node['hostname'],
    interface: node['avahi_daemon']['allow_interface']
  )
end
