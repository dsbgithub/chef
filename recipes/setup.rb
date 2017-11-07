package 'ntp' do
  action :install
end

package 'git'

package 'tree'


service 'ntpd' do
  action [:enable, :start]
end


file '/etc/motd' do
  content 'This computer is the property of Alaska Devraj'
end
