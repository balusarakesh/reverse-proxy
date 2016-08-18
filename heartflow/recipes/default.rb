#
# Cookbook Name:: heartflow
# Recipe:: default
#
# Copyright 2016, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#

execute "sudo apt-get update" do
	action :run
end

execute "sudo apt-get upgrade -y" do
	action :run
end

package "nginx" do
	action :install
end

template "/etc/nginx/conf.d/default.conf" do
	source "default.erb"
end

service "nginx" do
	action :restart
end

