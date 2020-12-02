if ENV['CI']
  require 'simplecov'
  SimpleCov.start
end

require "bundler"
Bundler.require :development, :test

require "is_it_up"
require "minitest/autorun"
require "minitest/pride"
require "minitest/ci" if ENV["CI"]

module IsItUp
  class TestCase < Minitest::Spec
  end
end
