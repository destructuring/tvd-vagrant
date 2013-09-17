template "#{node[:vagrant][:release_dir]}/Vagrantfile" do
  source "Vagrantfile.ec2.erb"
  mode 00644
end
