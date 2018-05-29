require File.expand_path(
  File.join('..', 'lib', 'omniauth', 'zoho', 'version'),
  __FILE__
)

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "omniauth-zoho"
  s.version     = Omniauth::Zoho::VERSION
  s.authors     = ["KlosterLight"]
  s.email       = ["gerry.rendon@gmail.com"]
  s.homepage    = "TODO"
  s.summary     = "%(A Zoho strategy for Omniauth 1.x)"
  s.description = "%(A Zoho strategy for Omniauth 1.x. This allows you to login to your Zoho API.)"
  s.license     = "MIT"
  s.homepage    = 'https://github.com/klosterlight/omniauth-zoho'

  s.files = `git ls-files`.split("\n")
  s.require_paths = ['lib']
 
  s.required_ruby_version = '>= 2.1'

  s.add_runtime_dependency 'omniauth', '~> 1.1', '>= 1.1.1'
  s.add_runtime_dependency 'omniauth-oauth2', '~> 1.5'

  s.add_development_dependency 'rake', '~> 12.0'
end
