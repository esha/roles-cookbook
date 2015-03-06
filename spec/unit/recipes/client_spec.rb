#
# Cookbook Name:: esha-roles
# Spec:: client
#

require 'spec_helper'

describe 'esha-roles::client' do
  context 'When all attributes are default, on an unspecified platform' do
    let(:chef_run) do
      runner = ChefSpec::ServerRunner.new
      runner.converge(described_recipe)
    end

    it 'includes esha-roles::base recipe' do
      expect(chef_run).to include_recipe('esha-roles::base')
    end

    it 'includes chef-client::config recipe' do
      expect(chef_run).to include_recipe('chef-client::config')
    end

    it 'includes chef-client::service recipe' do
      expect(chef_run).to include_recipe('chef-client::service')
    end

    it 'includes chef-client::delete_validation recipe' do
      expect(chef_run).to include_recipe('chef-client::delete_validation')
    end
  end
end
