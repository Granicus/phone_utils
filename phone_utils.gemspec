# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'phone_utils/version'

Gem::Specification.new do |spec|
  spec.name          = "phone_utils"
  spec.version       = PhoneUtils::VERSION
  spec.authors       = ["Team Pigeon"]
  spec.email         = ["pigeon@granicus.com"]
  spec.summary       = %q{Some helpful methods for dealing with phone numbers.}
  spec.description   = %q{Extracted from Textizen}
  spec.homepage      = "https://github.com/Granicus/phone_utils"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 2"
  spec.add_development_dependency "rake", "~> 12.3.3"
  spec.add_development_dependency "rspec"
end
