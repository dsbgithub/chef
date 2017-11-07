file '/hello.txt' do
  content 'Hello World!'
  mode '0644'
  owner 'vagrant'
  group 'root'
  verify do |path|
  open(path).read.include? 'Hello'
 end
end 
