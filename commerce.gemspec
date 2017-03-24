Gem::Specification.new do |s|
  s.name        = "commerce"
  s.version     = "1.0.1"
  s.authors     = ["Chec Commerce, Inc."]
  s.email       = ["hello+sdk@commercejs.com"]
  s.homepage    = "https://github.com/chec"
  s.summary     = "Ruby client library for Commerce.js by Chec"
  s.description = "Commerce.js is a full-stack eCommerce API built by Chec for designers and developers. See https://commercejs.com for more information"
  s.license     = "MIT"
  s.add_dependency('test-unit', '~> 3.1.5')
  s.add_dependency('faraday', '~> 0.10.0')
  s.add_dependency('certifi', '~> 2016.9', '>= 2016.09.26')
  s.required_ruby_version = '~> 2.0'
  s.files = Dir['{bin,lib,man,test,spec}/**/*', 'README*', 'LICENSE*']
  s.require_paths = ['lib']
end
