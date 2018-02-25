# frozen_string_literal: true
# This is a Chef recipe file. It can be used to specify resources which will
# apply configuration to a server.

package 'mysql-server' do
 action [:install]
end
service 'mysql' do
 action [:enable, :start]
end

# For more information, see the documentation: https://docs.chef.io/recipes.html
