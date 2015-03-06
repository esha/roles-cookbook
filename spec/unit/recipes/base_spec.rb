#
# Cookbook Name:: esha-roles
# Spec:: base
#

require 'spec_helper'

describe 'esha-roles::base' do
  context 'When all attributes are default, on an unspecified platform' do
    let(:chef_run) do
      runner = ChefSpec::ServerRunner.new
      runner.converge(described_recipe)
    end

    it 'includes ohai recipe' do
      expect(chef_run).to include_recipe('ohai')
    end

    it 'includes apt recipe' do
      expect(chef_run).to include_recipe('apt')
    end

    it 'includes ntp recipe' do
      expect(chef_run).to include_recipe('ntp')
    end
  end
end
