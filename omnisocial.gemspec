lib = File.expand_path('../lib/', __FILE__)
$:.unshift(lib) unless $:.include?(lib)

require 'omnisocial/version'
require 'bundler'

Gem::Specification.new do |gem|  
  gem.name          = 'omnisocial'
  gem.version       = Omnisocial::VERSION
  gem.platform      = Gem::Platform::RUBY
  gem.authors       = ['Tim Riley']
  gem.email         = 'tim@openmonkey.com'
  gem.homepage      = 'http://github.com/timriley/omnisocial'
  gem.summary       = 'Twitter and Facebook logins for your Rails application.'
  gem.description   = 'Twitter and Facebook logins for your Rails application.'
  gem.has_rdoc      = false
  gem.files         = %w(README.md) + Dir.glob('{lib,app,config}/**/*')
  gem.require_path  = 'lib'
  
  gem.add_dependency 'oa-core'
  gem.add_dependency 'oa-oauth'
  gem.add_dependency 'bcrypt-ruby'
end
