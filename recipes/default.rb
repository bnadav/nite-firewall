#
# Cookbook Name:: nite-firewall
# Recipe:: default
#
# Copyright 2015, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#

include_recipe 'firewall'

firewall_rule 'allow world to ssh on 2222' do
  port 2222
  source '0.0.0.0/0'
  only_if { linux? && node['firewall']['allow_ssh'] }
end

firewall_rule 'allow world to ssh on 2223' do
  port 2223
  source '0.0.0.0/0'
  only_if { linux? && node['firewall']['allow_ssh'] }
end

firewall_rule 'https' do
  port     443
  protocol :tcp
  position 1
  command   :allow
end
