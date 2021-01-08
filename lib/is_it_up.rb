require "rack"

module IsItUp
  autoload :VERSION, "is_it_up/version"
  autoload :Middleware, "is_it_up/middleware"
  autoload :Railtie, "is_it_up/railtie" if defined?(Rails::Railtie)
end
