require File.expand_path(File.dirname(__FILE__)) + '/lib/sensu-plugin'

Gem::Specification.new do |s|
  s.name          = 'sensu-plugin'
  s.version       = Sensu::Plugin::VERSION
  s.platform      = Gem::Platform::RUBY
  s.authors       = ['Decklin Foster']
  s.email         = ['decklin@red-bean.com']
  s.homepage      = 'https://github.com/sonian/sensu-plugin'
  s.summary       = 'Sensu Plugins'
  s.description   = 'Plugins and helper libraries for Sensu, a monitoring framework'
  s.license       = 'MIT'
  s.has_rdoc      = false
  s.require_paths = ['lib']
  s.files         = Dir['lib/**/*.rb']

  s.add_dependency('json')
  s.add_dependency('mixlib-cli', '>= 1.1.0')
end
