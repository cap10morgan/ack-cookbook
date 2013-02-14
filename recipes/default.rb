package "ack" do
  case node[:platform]
  when "centos", "redhat", "fedora", "arch", "gentoo"
    package_name "ack"
  when "debian", "ubuntu"
    package_name "ack-grep"
  end
  action :install
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
