case node[:platform]
when "centos", "redhat"
  execute "curl #{node['ack']['download']} > #{node['ack']['symlink_as']} && chmod 0755 #{node['ack']['symlink_as']}" do
    user "root"
    not_if "test -f #{node['ack']['symlink_as']}"
  end
when "fedora", "arch", "gentoo"
  package "ack"
when "debian", "ubuntu"
  package "ack-grep"
end


if node[:ack][:symlink_as] && platform?(%w{debian ubuntu})
  link node[:ack][:symlink_as] do
    to "/usr/bin/ack-grep"
  end
end

template "/etc/ackrc" do
  source "ackrc.erb"
  variables node[:ack]
  mode "0644"
end

file "/etc/profile.d/ack.sh" do
  content <<-EOF
#!/bin/sh
export ACKRC=/etc/ackrc
EOF
  mode "0644"
end
