#
# Cookbook Name:: esha-roles
# Recipe:: client
#

include_recipe 'esha-roles::base'
include_recipe 'chef-client::config'
include_recipe 'chef-client::service'
include_recipe 'chef-client::delete_validation'
