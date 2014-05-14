# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'google_maps_api/core/version'

Gem::Specification.new do |spec|
  spec.name          = "google_maps_api-core"
  spec.version       = GoogleMapsAPI::Core::VERSION
  spec.authors       = ["Felipe Zavan"]
  spec.email         = ["zavan@outlook.com"]
  spec.summary       = %q{Common stuff used by the google_maps_api gem components.}
  spec.homepage      = "https://github.com/zavan/google_maps_api-core"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.6"
  spec.add_development_dependency "rake"
  spec.add_development_dependency "rspec", ">= 3.0.0.beta2", "< 4"
end
