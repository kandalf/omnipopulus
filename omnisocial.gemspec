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
  gem.homepage      = 'http://github.com/icelab/omnisocial'
  gem.summary       = 'Twitter and Facebook logins for your Rails application.'
  gem.description   = 'Twitter and Facebook logins for your Rails application.'
  gem.files         = %w(README.md) + Dir.glob('{lib,app,config}/**/*')
  gem.require_path  = 'lib'
  
  gem.add_dependency 'oa-core', "~> 0.2.6"
  gem.add_dependency 'oa-oauth', "~> 0.2.6"
  gem.add_dependency 'bcrypt-ruby', "~> 2.1.4"
end
