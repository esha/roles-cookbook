require 'spec_helper'

describe 'esha-roles::client' do
  it 'has a chef-client configuration file' do
    expect(file('/etc/chef/client.rb')).to be_file
  end

  it 'has a running chef-client service' do
    expect(service('chef-client')).to be_running
  end
end
