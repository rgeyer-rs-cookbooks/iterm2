#
# Cookbook Name:: iterm2
# Recipe:: install
#
#  Copyright 2012 Ryan J. Geyer
#  Licensed under the Apache License, Version 2.0 (the "License");
#  you may not use this file except in compliance with the License.
#  You may obtain a copy of the License at
#
#  http://www.apache.org/licenses/LICENSE-2.0
#
#  Unless required by applicable law or agreed to in writing, software
#  distributed under the License is distributed on an "AS IS" BASIS,
#  WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
#  See the License for the specific language governing permissions and
#  limitations under the License.

rightscale_marker :begin

iterm2_zipfile = ::File.join(Chef::Config['file_cache_path'], 'iterm2.zip')

remote_file iterm2_zipfile do
  source node['iterm2']['download_uri']
end

bash "Extract the iterm2 zip to the Applications directory" do
  code "unzip #{iterm2_zipfile} -d /Applications"
end

rightscale_marker :end