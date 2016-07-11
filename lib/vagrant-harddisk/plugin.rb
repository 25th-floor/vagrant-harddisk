# This is a sanity check to make sure no one is attempting to install
# this into an early Vagrant version.
if Vagrant::VERSION < "1.8.4"
  raise "The Vagrant Compose plugin is only compatible with Vagrant 1.8.4+"
end

module VagrantPlugins
  module Harddisk
    class Plugin < Vagrant.plugin("2")
      name "Harddisk"
      description <<-DESC
      Creates additional harddisks in vagrant machines.
      DESC

      config "harddisk" do
        require_relative "config"
        Config
      end

      # action_hook 'harddiskCreation' do |hook|
      #   hook.before Vagrant::Action::Builtin::Provision, Action::Creation
      # end
    end
  end
end
