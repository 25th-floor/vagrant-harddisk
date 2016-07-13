require 'spec_helper'
require 'vagrant-harddisk/version'

describe VagrantPlugins::Harddisk do
  it 'has a version number' do
    expect(VagrantPlugins::Harddisk::VERSION).not_to be nil
  end
end
