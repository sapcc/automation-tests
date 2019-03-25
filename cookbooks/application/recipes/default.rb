Chef::Log.info "Executing #{cookbook_name}::#{recipe_name}"

Chef::Log.info "Searching for nodes:"
search(:node, "*:*") do |node|
  Chef::Log.info("#{node.name} -> fqdn: #{node[:fqdn]} ip: #{node[:ipaddress]} tags: #{node[:tags]}")
end
