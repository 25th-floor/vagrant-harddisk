require 'spec_helper'
require 'vagrant-harddisk/config'

describe VagrantPlugins::Harddisk::Config do
  let(:instance) { described_class.new }

  disk_fixture = {
      :size => '10G',
      :position => 2,
      :mount_point => '/foo'
  }

  it 'does nothing without any disk configuration' do
    instance.finalize!

    expect(instance.disks.empty?).to be true
  end

  [:size, :position, :mount_point].each do |key|
    it "throws an error if the required configuration parameter #{key} is missing" do
      disk = Hash[disk_fixture]
      disk.delete(key)
      instance.disks = {:disk => disk}

      expect { instance.finalize! }.to raise_error(Vagrant::Errors::VagrantError)
    end
  end

  it 'uses sata as default for interface_type' do
    disk = Hash[disk_fixture]
    instance.disks = {:disk => disk}

    instance.finalize!

    expect(instance.disks[:disk][:interface_type]).to eq 'sata'
  end

end
