package 'tree' do
	action :install
end
file '/etc/motd' do
	action :create
        content "Property of Toatzin Padilla

	IPADDRESS: #{node['ipaddress']}
	HOSTNAME : #{node['hostname']}
	MEMORY   : #{node['memory']['total']}
	CPU      : #{node['cpu']['0']['mhz']}"

end



