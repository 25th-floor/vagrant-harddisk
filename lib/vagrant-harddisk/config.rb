require "vagrant"

module VagrantPlugins
  module Harddisk
    class Config < Vagrant.plugin("2", :config)
      # A list of disk specifications.
      #
      # @return [???]
      attr_accessor :disks

      def initialize
        @disks = Hash[]
      end

      def finalize!
        @disks.each do |name, disk|
          unless disk.key?(:size)
            raise Vagrant::Errors::VagrantError.new, "Harddisk '#{name}' is missing required attribute: 'size'"
          end
          unless disk.key?(:position)
            raise Vagrant::Errors::VagrantError.new, "Harddisk '#{name}' is missing required attribute: 'position'"
          end
          unless disk.key?(:mount_point)
            raise Vagrant::Errors::VagrantError.new, "Harddisk '#{name}' is missing required attribute: 'mount_point'"
          end
          unless disk.key?(:interface_type)
            disk[:interface_type] = 'sata'
          end
        end
      end
    end
  end
end
