case node['platform_family']
when 'debian'
	package_name = "apache2"
	service_name = "apache2"
	doc_root = "/var/www/"
when 'rhel'
	package_name = "httpd"
	service_name = "httpd"
	doc_root = "/var/www/html/"
end
package "#{package_name}" do
	action [:install]
end
	service "#{service_name}" do
	action [:enable, :start]
end
template "#{doc_root}/index.html" do
	source 'index.html.erb'
end
