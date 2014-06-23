require "bundler" ; Bundler.require :development, :test
require "is_it_up"
require "minitest/autorun"
require "minitest/pride"

module IsItUp
  class TestCase < Minitest::Spec
  end
end
