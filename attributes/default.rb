# Default Attributes for Progress Developer Studio for OpenEdge

if node['dotnet']['framework'] == true

  if node['dotnet']['version']['required'] == '4.8.03761'
    default['dotnet']['upgrade_path'] = 'https://butlersa.blob.core.windows.net/snohio/ndp48-web.exe'

  elsif node['dotnet']['version']['required'] == '4.8.04084'
    default['dotnet']['upgrade_path'] = 'https://butlersa.blob.core.windows.net/snohio/ndp48-web.exe'

  else
    return

  end

end
