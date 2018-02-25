package 'apache2' do
        action [:install]
end

service 'apache2' do
        action [:enable, :start]
end

file '/var/www/html/index.html' do
        content '<html>
<body>
<h1>Hello World</h1>
                </body>
        </html>'
end
