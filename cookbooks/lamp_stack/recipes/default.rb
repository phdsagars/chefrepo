
# Cookbook:: lamp_stack
# Recipe:: default
#
# Copyright:: 2018, The Authors, All Rights Reserved.

#execute "update-upgrade" do
# command "sudo yum update -y && sudo yum upgrade -y"
# action [:run]
#end

#include_recipe 'lamp_stack::apache'
#include_recipe 'lamp_stack::mysql'
#include_recipe 'lamp_stack::php'
case node['platform_family']
when 'rhel'
	execute "update-upgrade" do
		command "sudo apt-get update -y && sudo apt-get upgrade -y"
		action [:run]
	end
	include_recipe 'lamp_stack::apache'
	include_recipe 'lamp_stack::mysql'
	include_recipe 'lamp_stack::php'
end
