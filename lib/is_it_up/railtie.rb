module IsItUp
  class Railtie < Rails::Railtie
    initializer "is_it_up.configure_rails_initialization" do
      Rails.application.middleware.use IsItUp::Middleware
    end
  end
end
