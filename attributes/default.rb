#
# Cookbook Name:: esha-roles
# Attribute:: default
#

default['cacert']['certs']['esha-SKYNET-CA']['source'] = 'https://s3.amazonaws.com/esharesearch-assets/certificateauthority/esha-SKYNET-CA.crt'

default['chef_client']['server_url'] = 'https://api.opscode.com/organizations/esha'
default['chef_client']['validation_client_name'] = 'esha-validator'
