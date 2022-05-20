# copyright: 2022, Mike Butler

title 'Microsoft .Net - Compliance Profile'

control '.Net Framework Version Check' do
  impact 0.7
  title '.Net Framework Version Check'
  desc 'If the version is not up to date, adjust the Node Attribute to release'

    describe registry_key('HKLM\SOFTWARE\Microsoft\NET Framework Setup\NDP\v4\Full') do
    its('version') { should cmp >= '4.8' }
  end
end
