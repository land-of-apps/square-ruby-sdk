Gem::Specification.new do |s|
  s.name = 'square.rb'
  s.version = '6.2.0.20200812'
  s.summary = 'square'
  s.description = 'Use Square APIs to manage and run business including payment, customer, product, inventory, and employee management.'
  s.authors = ['Square Developer Platform']
  s.email = 'developers@squareup.com'
  s.homepage = 'https://squareup.com/developers'
  s.license = 'Apache-2.0'
  s.add_dependency('logging', '~> 2.2')
  s.add_dependency('faraday', '~> 0.15')
  s.add_dependency('faraday_middleware', '~> 0.13')
  s.add_dependency('certifi', '~> 2018.1')
  s.add_dependency('faraday-http-cache', '~> 2.0')
  s.add_development_dependency('minitest', '~> 5.0')
  s.add_development_dependency('minitest-proveit', '~> 1.0')

  #appmap
  s.add_development_dependency('appmap')

  #appmap doesn't support 2.0 
  #s.required_ruby_version = '~> 2.0'
  
  s.files = Dir['{bin,lib,man,test,spec}/**/*', 'README*', 'LICENSE*']
  s.require_paths = ['lib']
end
