template "#{node[:release_dir]}/Vagrantfile" do
  source "Vagrantfile.virtualbox.erb"
  mode 00644
end
