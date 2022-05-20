#
# Cookbook:: dotnet
# Recipe:: framework
#
# Copyright:: 2022, Mike Butler, Apache2

reg = ::Win32::Registry::HKEY_LOCAL_MACHINE.open('SOFTWARE\Microsoft\NET Framework Setup\NDP\v4\Full')
_typ, dotnetver = reg.read('Version')

node.default['dotnet']['version']['current'] = dotnetver

if node['dotnet']['version']['current'] < node['dotnet']['version']['required']
  log "Version #{node['dotnet']['version']['current']} - Upgrading to #{node['dotnet']['version']['required']}." do
    message 'You need to upgrade'
    level :info
  end
  include_recipe 'dotnet::upgrade'
elsif node['dotnet']['version']['current'] > node['dotnet']['version']['required']
  log "Version #{node['dotnet']['version']['current']} is currently installed - Manual work to downgrade to #{node['dotnet']['version']['required']}." do
    message 'Manual Intervention Will Be Required'
    level :info
  end
else
  log "Nothing to see here! Version #{node['dotnet']['version']['current']} is the version required #{node['dotnet']['version']['required']}." do
    message 'You are good to go!'
    level :info
  end
end
