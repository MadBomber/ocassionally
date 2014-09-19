# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'ocassionally/version'

Gem::Specification.new do |spec|
  spec.name          = "ocassionally"
  spec.version       = Ocassionally::VERSION
  spec.authors       = ["Dewayne VanHoozer"]
  spec.email         = ["dvanhoozer@gmail.com"]
  spec.summary       = %q{Ocassionally it works; and, ocassionally it doesn't}
  spec.description   = %q{Probabilistic conditionals for fuzziness.}
  spec.homepage      = "http://github.com/MadBomber/ocassionally"
  spec.license       = "You want it, its yours"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.7"
  spec.add_development_dependency "rake", "~> 10.0"
end
