package 'mysql-server' do
 action [:install]
end
service 'mysql' do
 action [:enable, :start]
end
