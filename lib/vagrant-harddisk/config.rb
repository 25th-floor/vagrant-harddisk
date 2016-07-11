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
        puts @disks
      end
    end
  end
end
