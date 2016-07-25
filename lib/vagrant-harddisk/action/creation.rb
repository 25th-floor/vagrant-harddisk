module VagrantPlugins
  module Harddisk
    module Action
      class Creation
        def initialize(app, env)
          @app = app
          @machine = env[:machine]
        end

        def call(env)
          id = @machine.id

          disks = @machine.config.harddisk.disks
          unless disks.empty?
            disks.each do |name, disk|
              present = system("prlctl list --info #{id} | grep #{disk[:interface_type]}:#{disk[:position]} > /dev/null")
              unless present
                env[:ui].output("Installing hdd #{name}")
                system("prlctl set #{id} --device-add hdd --type expand --size #{disk[:size]} --position #{disk[:position]} --iface #{disk[:interface_type]}")
              end
            end
          end

          # Continue provisioning
          @app.call(env)
        end
      end
    end
  end
end
