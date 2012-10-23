package "newrelic-php5" do
  action :install
end

service "newrelic-daemon" do
  action :nothing
  enabled true
  supports :start => true, :stop => true, :restart => true
end

service "apache2" do
  action :nothing
  supports :restart => true
end

template "/etc/newrelic/newrelic.cfg" do
  source "newrelic.cfg.erb"
  owner "root"
  group "root"
  mode 0644
  action :create
  notifies :restart, resources(:service => "newrelic-daemon")
  notifies :restart, resources(:service => "apache2")
end
