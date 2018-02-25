#
# Cookbook:: sql
# Recipe:: default
#
# Copyright:: 2018, The Authors, All Rights Reserved.
package 'mysql-server' do
 action [:install]
end
service 'mysql' do
 action [:enable, :start]
end
