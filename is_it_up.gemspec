# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'is_it_up/version'

Gem::Specification.new do |spec|
  spec.name          = "is_it_up"
  spec.version       = IsItUp::VERSION
  spec.authors       = ["Christopher R. Murphy"]
  spec.email         = ["cmurphy@customink.com"]
  spec.summary       = %q{A Ruby gem for adding a simple endpoint to see if your application "is up".}
  spec.description   = spec.summary
  spec.homepage      = "https://github.com/customink/is_it_up"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_dependency "rack"
  spec.add_development_dependency "rake"
  spec.add_development_dependency "json"
  spec.add_development_dependency "bundler",  "~> 1.5"
  spec.add_development_dependency "minitest", "~> 5.0"
end
