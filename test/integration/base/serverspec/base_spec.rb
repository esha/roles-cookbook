require 'spec_helper'

describe 'esha-roles::base' do
  it 'has a running ntp service' do
    expect(service('ntp')).to be_running
  end
end
