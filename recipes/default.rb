#
# Cookbook Name:: newrelic
# Recipe:: default
#
# Copyright 2012, Kameron Kenny
#
# All rights reserved - Do Not Redistribute
#

execute "apt-get update" do
  action :nothing
end

execute "Get newrelic gpg key for apt" do
  command "wget -O - http://download.newrelic.com/548C16BF.gpg | apt-key add -"
  not_if "apt-key export 'New Relic' | grep 'BEGIN PGP PUBLIC KEY BLOCK'"
end

template "/etc/apt/sources.list.d/newrelic.list" do
  owner "root"
  mode "0644"
  source "apt.newrelic.list.erb"
  variables({ :apt_url => node['newrelic']['apt_url'] })
  notifies :run, resources("execute[apt-get update]"), :immediately
  only_if "apt-key export 'New Relic'"
end

