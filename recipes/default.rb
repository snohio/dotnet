#
# Cookbook:: dotnet
# Recipe:: default
#
# Copyright:: 2022, Mike Butler, Apache2.

include_profile 'dotnet::dotnet'

if node['dotnet']['framework'] == true
  include_recipe 'dotnet::framework'
end
