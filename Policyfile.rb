# Policyfile.rb - Describe how you want Chef Infra Client to build your system.
#
# For more information on the Policyfile feature, visit
# https://docs.chef.io/policyfile/

# A name that describes what the system you're building with Chef does.
name 'dotnet'

# Where to find external cookbooks:
default_source :supermarket

# run_list: chef-client will run these recipes in the order specified.
run_list 'dotnet::default'

# Specify a custom source for a single cookbook:
cookbook 'dotnet', path: '.'

default['dotnet']['framework'] = true
default['dotnet']['version']['required'] = '4.8.03761' # Server
# default['dotnet']['version']['required'] = '4.8.04084' # Desktop
# default['dotnet']['version']['required'] = '4.7.03190'
