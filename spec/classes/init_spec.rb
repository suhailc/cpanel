require 'spec_helper'
describe 'cpanel' do

  context 'with defaults for all parameters' do
    it { should contain_class('cpanel') }
  end
end
