require 'test_helper'

module IsItUp
  class IsItUpTest < TestCase
    it "must define the version" do
      refute_nil VERSION
    end

    it 'properly loads Railtie constants' do
      begin
        require 'rails/railtie'
        refute_nil VERSION
      rescue NameError
        fail('NameError was raised while loading Railtie')
      end
    end
  end
end
