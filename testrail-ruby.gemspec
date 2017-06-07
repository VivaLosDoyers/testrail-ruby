# coding: utf-8
lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)

# Maintain your gem's version:
require 'version'


Gem::Specification.new do |spec|
  spec.name             = "testrail-ruby"
  spec.version          = Testrail::VERSION
  spec.authors          = ["Frances Morales"]
  spec.email            = "fmorales@francesmoralespec.com"
  spec.summary          = "Client wrapper in Ruby for TestRail API (v2)"
  spec.description      = """A Ruby client wrapper for the TestRail API (v2)"""
  spec.homepage         = "https://github.com/fmorales/TestRail-Ruby"
  spec.license          = "MIT"
  spec.require_paths    = ["lib"]
  spec.files            = Dir['lib/**/*'] + ['Gemfile', 'Rakefile', 'README.md', 'LICENSE.txt']
  spec.test_files       = Dir['spec/**/*']

  spec.add_development_dependency "bundler"
  spec.add_development_dependency "rake"
  spec.add_development_dependency "rspec"
  spec.add_development_dependency "json"
end



















