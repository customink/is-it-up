require 'test_helper'
require 'json'

module IsItUp
  class MiddlewareTest < TestCase

    let(:rack_app) do
      Rack::Builder.new do
        use IsItUp::Middleware
        run lambda { |env|
          [
            200,
            { "Content-type" => "text/html" },
            [ "A normal response" ]
          ]
        }
      end
    end

    describe "When the request path contains '/is_it_up'" do
      before do
        @response = Rack::MockRequest.new(rack_app).get("/is_it_up")
      end

      it "must respond with a JSON content type'" do
        assert_equal "application/json", @response.content_type
      end

      it "must render a JSON response indicating success'" do
        json = JSON.parse(@response.body)
        assert_equal "ok", json["status"]
        assert_equal 200, json["code"]
      end
    end

    describe "When the request path does not contain '/is_it_up'" do
      before do
        @response = Rack::MockRequest.new(rack_app).get("/not_is_it_up")
      end

      it "must not render the JSON content type" do
        assert_equal "text/html", @response.content_type
      end

      it "must not render the JSON response for /is_it_up" do
        assert_equal "A normal response", @response.body
      end
    end
  end
end
