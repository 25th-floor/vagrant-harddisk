require 'spec_helper'

describe Vagrant::Harddisk do
  it 'has a version number' do
    expect(Vagrant::Harddisk::VERSION).not_to be nil
  end
end
