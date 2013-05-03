template "#{node[:vagrant][:release_dir]}/Vagrantfile" do
  source "Vagrantfile.docker.erb"
  mode 00644
end
