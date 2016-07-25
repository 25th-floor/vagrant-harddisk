Vagrant.configure("2") do |config|
  config.vm.box = "parallels/ubuntu-14.04"

  config.harddisk.disks['database'] = {
      :size           => '10G',
      :position       => 4,
      :interface_type => 'sata',
      :mount_point    => '/dbstorage',
  }
  config.harddisk.disks['noInterface'] = {
      :size           => '10G',
      :position       => 5,
      :mount_point    => '/foo',
  }
end
