Vagrant.configure("2") do |config|
  config.vm.box = "25th-floor/ubuntu1404"

  config.harddisk.disks['database'] = {
      :size           => '10G',
      :positiong      => 4,
      :interface_type => 'sata',
      :mount_point    => '/dbstorage',
  }
end
