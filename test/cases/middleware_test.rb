require 'test_helper'

module IsItUp
  class MiddlewareTest < TestCase

    let(:rack_app) do
      @app =
      Rack::Builder.new do
        use IsItUp::Middleware
        run lambda {|env| [200, {"Content-type" => "text/html"}, ["A response"]] }
      end
    end

    describe "When the request path contains '/is_it_up'" do
      it "must render 'It is up.'" do
        response = Rack::MockRequest.new(rack_app).get("/is_it_up")
        response.body.must_equal "It is up."
      end
    end

    describe "When the request path does not contain '/is_it_up'" do
      it "must not render 'It is up.'" do
        response = Rack::MockRequest.new(rack_app).get("/not_is_it_up")
        response.body.must_equal "A response"
      end
    end
  end
end
