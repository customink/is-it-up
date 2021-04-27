require "rack"

# This module defines our Gem, and automatically requires the needed files to ensure that the gem can hook into
# the application's middleware stack when needed, or triggers the Rails boot process properly using the Railtie
# framework.
# Do not swap this code to rely on autoload, since this behavior is not compatible with higher Ruby releases.
# We need to code to be loaded immediately, and not on-demand as this will be too late for the Rails boot process.
module IsItUp
  require_relative 'is_it_up/version'
  require_relative 'is_it_up/middleware'
  require_relative 'is_it_up/railtie' if defined?(::Rails::Railtie)
end
