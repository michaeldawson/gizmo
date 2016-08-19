# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'gizmo/version'

Gem::Specification.new do |spec|
  spec.name          = 'gizmo'
  spec.version       = Gizmo::VERSION
  spec.authors       = ['Luke Cunningham', 'Steven Holloway', 'Sam Weller']
  spec.email         = ['email.michaeldawson@gmail.com']

  spec.summary       = %q{DRY up your testing assertions}
  spec.description   = %q{}
  spec.homepage      = "TODO: Put your gem's website or public repo URL here."
  spec.license       = 'MIT'

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.require_paths = ['lib']

  spec.add_development_dependency 'bundler', '~> 1.10'
  spec.add_development_dependency 'rake', '~> 10.0'
  spec.add_development_dependency 'rspec'
  spec.add_development_dependency 'rspec-mocks'
  spec.add_development_dependency 'cucumber'
  spec.add_development_dependency 'capybara'
  spec.add_development_dependency 'selenium-webdriver'
  spec.add_development_dependency 'byebug'

  spec.add_dependency 'activesupport'
  spec.add_dependency 'nokogiri'
  spec.add_dependency 'tilt'
end
