require_relative 'lib/is_it_up/version'

Gem::Specification.new do |spec|
  spec.name          = "is_it_up"
  spec.version       = IsItUp::VERSION
  spec.authors       = ["Christopher R. Murphy"]
  spec.email         = ["cmurphy@customink.com"]
  spec.summary       = %q{A Ruby gem for adding a simple endpoint to see if your application "is up".}
  spec.description   = spec.summary
  spec.homepage      = "https://github.com/customink/is_it_up"
  spec.license       = "MIT"

  spec.files         = ::Dir.glob(::Pathname.new(__dir__).join("lib/**/**")).reject do |file|
    file.match(%r{^(test|spec|features)/}) || ::File.directory?(file)
  end
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_dependency "rack"

  spec.add_development_dependency "rake"
  spec.add_development_dependency "json"
  spec.add_development_dependency "bundler"
  spec.add_development_dependency "minitest", "~> 5.0"
end
