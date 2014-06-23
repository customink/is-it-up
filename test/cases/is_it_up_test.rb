require 'test_helper'

module IsItUp
  class IsItUpTest < TestCase
    it "must define the version" do
      VERSION.wont_be_nil
    end
  end
end
