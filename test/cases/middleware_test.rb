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
        @response.content_type.must_equal "application/json"
      end

      it "must render a JSON response indicating success'" do
        json = JSON.parse(@response.body)
        json["status"].must_equal("ok")
        json["code"].must_equal(200)
      end
    end

    describe "When the request path does not contain '/is_it_up'" do
      before do
        @response = Rack::MockRequest.new(rack_app).get("/not_is_it_up")
      end

      it "must not render the JSON content type" do
        @response.content_type.must_equal "text/html"
      end

      it "must not render the JSON response for /is_it_up" do
        @response.body.must_equal "A normal response"
      end
    end
  end
end
