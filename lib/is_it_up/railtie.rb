module IsItUp
  class Railtie < Rails::Railtie
    initializer "is_it_up.configure_rails_initialization" do |app|
      app.middleware.use IsItUp::Middleware
    end
  end
end
