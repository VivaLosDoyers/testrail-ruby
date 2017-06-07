$:.push File.expand_path('../lib', __FILE__)

# Maintain your gem's version:
require 'testrail/version'


Gem::Specification.new do |s|
  s.name             = "testrail"
  s.version          = Testrail::VERSION
  s.authors          = ["Frances Morales"]
  s.summary          = "Client wrapper in Ruby for TestRail API (v2)"
  s.description      = """
    A Ruby client wrapper for the TestRail API (v2)
  """
  s.email            = "fmorales@francesmorales.com"
  s.homepage         = "https://github.com/fmorales/TestRail-Ruby"
  s.licenses         = ["MIT"]
  s.require_paths    = ["lib"]

  s.extra_rdoc_files = [
    "LICENSE.txt",
    "README.md"
  ]
  s.files            = Dir['lib/**/*'] + ['Gemfile', 'Rakefile', 'README.md', 'LICENSE.txt']
  s.test_files       = Dir['spec/**/*']

  s.add_dependency 'httparty',      '~> 0.11.0'
  s.add_dependency 'activesupport', '~> 3.1'

  s.add_development_dependency 'rake',         '~> 10.0.3'
  s.add_development_dependency 'rspec',        '~> 2.13.0'
  s.add_development_dependency 'debugger',     '~> 1.5.0'
  s.add_development_dependency 'rdoc',         '~> 4.0.1'
  s.add_development_dependency 'webmock',      '~> 1.11.0'
  s.add_development_dependency 'simplecov',    '~> 0.7.1'
end

