execute "curl #{node['ack']['download']} > #{node['ack']['symlink_as']} && chmod 0755 #{node['ack']['symlink_as']}" do
  user "root"
end
