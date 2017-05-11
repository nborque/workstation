package 'tree' do
 action :install
end
file "/etc/motd" do
 content "Property of Nuria
 IPADDRESS: #{node['ipaddress']}
 HOSTNAME : #{node['hostname']}
 MEMORY   : #{node['memory']['total']}
 CPU      : #{node['cpu']['0']['mhz']}
\n"
 mode '0644'
 owner 'root'
 group 'root'
end
