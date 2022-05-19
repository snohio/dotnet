#
# Cookbook:: dotnet
# Recipe:: default
#
# Copyright:: 2022, Mike Butler, Apache2.

if node['dotnet']['framework'] == true
  include_recipe 'dotnet::framework'
end
