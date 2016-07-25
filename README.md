# Vagrant Harddisk Plugin

This vagrant plugin creates and formats additional hard disks to use inside the machine.

Warning: At the moment this plugin just works with Parallels, and therefore with OS X.

## Installation

```
$ vagrant plugin install vagrant-harddisk
```

## Configuration

After installing the plugin (see above), add the following code to configure an additional hard disk:

```
  config.harddisk.disks['database'] = {
      :size           => '20G',
      :position       => 2,
      :interface_type => 'sata',
      :mount_point    => '/dbstorage',
  }
```

Note: mount_point is not used at the moment.

## Development

After checking out the repo, run `bundle` to install dependencies. Then, run `bundle exec rake spec` to run the tests. 

If you want to try your changes with a sample Vagrantfile, just run `bundle exec vagrant up`.

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/25th-floor/vagrant-harddisk.

## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).
