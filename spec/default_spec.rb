# encoding: utf-8
require 'chefspec'
require 'spec_helper'
require 'fauxhai'

describe 'automount_support::default' do
  let(:chef_run) do
    ChefSpec::SoloRunner.new do |node|
    end.converge(described_recipe)
  end

  it 'includes the automount_support recipe' do
    expect(chef_run).to include_recipe('automount_support')
  end
  it 'installs autofs' do
    expect(chef_run).to install_package('autofs')
  end
  it 'notifies autofs' do
    file = chef_run.file('/etc/auto.master')
    expect(file).to notify('service[autofs]').to(:restart)
  end
end
