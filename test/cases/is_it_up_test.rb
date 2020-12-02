require 'test_helper'

module IsItUp
  class IsItUpTest < TestCase
    it "must define the version" do
      refute_nil VERSION
    end
  end
end
