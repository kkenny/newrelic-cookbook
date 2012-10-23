package "newrelic-sysmond" do
  action :install
end

service "newrelic-sysmond" do
  action :nothing
  enabled true
  supports :start => true, :stop => true, :restart => true
end

template "/etc/newrelic/nrsysmond.cfg" do
  source "nrsysmond.cfg.erb"
  owner "root"
  group "root"
  mode 0644
  action :create
  notifies :restart, resources(:service => "newrelic-sysmond")
end

