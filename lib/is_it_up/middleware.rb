module IsItUp
  # If you are using Ruby on Rails, you do not need to manually insert this
  # middleware into your middleware stack.  See railtie.rb.
  class Middleware
    def initialize(app)
      @app = app
    end

    def call(env)
      status, header, response =
      if env["PATH_INFO"] == "/is_it_up"
        [
          200,
          { "Content-Type" => "application/json" },
          ['{ "status": "ok", "code": 200 }']
        ]
      else
        @app.call(env)
      end
      [status, header, response]
    end
  end
end
