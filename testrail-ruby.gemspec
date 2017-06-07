$:.push File.expand_path('../lib', __FILE__)

# Maintain your gem's version:
require 'testrail/version'


Gem::Specification.new do |s|
  s.name             = "testrail-ruby"
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

  s.add_development_dependency 'rake',         '~> 10.0.3'
end
