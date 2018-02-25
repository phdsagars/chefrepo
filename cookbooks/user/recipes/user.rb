userinfo = data_bag_item('userlist','dev')
user 'dev' do
comment 'developer user'
uid 2010
home '/home/vagrant'
shell '/bin/bash'
password userinfo['password']
end
