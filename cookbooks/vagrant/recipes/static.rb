template "#{node[:vagrant][:release_dir]}/Vagrantfile" do
  source "Vagrantfile.static.erb"
  mode 00644
end
