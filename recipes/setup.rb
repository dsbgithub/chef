package 'ntp' do
  action :install
end

package 'git'

service 'ntpd' do
  action [:enable, :start]
end


file '/etc/motd' do
  content "This computer is the property of Alaska Devraj
  HOSTNAME: #{node['hostname']}
  IPADDRESS: #{node['ipaddress']}
  CHEF Version: #{node['chef_packages']['chef']['version']}
  MEMORY: #{node['memory']['total']}
  CPU: #{node['cpu']['0']['mhz']}
  TIME: #{node['time']['timezone']}
"
  owner 'root'
  group 'root' 
  action :create
end


