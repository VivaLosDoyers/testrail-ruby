# coding: utf-8
lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)

# Maintain your gem's version:
require 'testrail/version'


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

  # Prevent pushing this gem to RubyGemspec.org. To allow pushes either set the 'allowed_push_host'
  # to allow pushing to a single host or delete this section to allow pushing to any host.
  if spec.respond_to?(:metadata)
    spec.metadata["allowed_push_host"] = "https://rubygems.org"
  else
    raise "RubyGems 2.0 or newer is required to protect against " \
      "public gem pushespec."
  end

  spec.add_development_dependency "bundler", "~> 1.15"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.0"
  spec.add_development_dependency "json"
end



















