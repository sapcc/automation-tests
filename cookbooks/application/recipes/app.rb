Chef::Log.info "Executing #{cookbook_name}::#{recipe_name}"

include_recipe "nginx::default"

directory "/var/www/nginx-default" do
  recursive true
end

db_server = search(:node, "tags:db=demo").first

msg = if db_server
  "version   : 2<br>\n" +
  "node_name : #{db_server.name}<br>\n" +
  "fqdn      : #{db_server[:fqdn]}<br>\n" +
  "ip        : #{db_server[:ipaddress]}\n"
else
  "db server not found"
end

file "/var/www/nginx-default/index.html" do
  content msg 
  mode 0644
end
