package 'tree' do
	action :install
end
file '/etc/motd' do
	action :create
        content 'Property of Toatzin Padilla'
end



