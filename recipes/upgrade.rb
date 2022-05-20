#
# Cookbook:: dotnet
# Recipe:: upgrade
#
# Copyright:: 2022, Mike Butler, Apache2

windows_package 'Microsoft .Net Framework 4.x' do
  source node['dotnet']['upgrade_path']
  action :install
  installer_type :custom
  options '/q /log c:\dotnetupdate.log /norestart'
end

reboot 'app_requires_reboot' do
  action :request_reboot
  reason ".Net Upgraded to #{node['dotnet']['version']['required']} and requires a reboot"
  delay_mins 1
end
