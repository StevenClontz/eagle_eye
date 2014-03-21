# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'eagle_eye/version'

Gem::Specification.new do |spec|
  spec.name          = "eagle_eye"
  spec.version       = EagleEye::VERSION
  spec.authors       = ["Steven Clontz"]
  spec.email         = ["steven.clontz@gmail.com"]
  spec.summary       = %q{Module for organizing reports and report data.}
  spec.description   = <<-DESC 
A module for organizing and representing written reports.
Documents contain content (in Markdown) and Figures. 
Figures include Images, Tables, or any custom figure type that
you'd like to roll.
  DESC
  spec.homepage      = "https://github.com/StevenClontz/eagle_eye"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_runtime_dependency "markaby"

  spec.add_development_dependency "bundler", "~> 1.5"
  spec.add_development_dependency "rake"
  spec.add_development_dependency 'guard-rspec'
end
