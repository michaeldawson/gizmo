require 'rubygems'
require 'bundler/setup'

require 'rspec'
require 'gizmo'
require 'capybara'
require 'capybara/dsl'

RSpec.configure do |config|
  config.include Capybara::DSL
end

Capybara.run_server = false

RSpec.configure do |config|
  config.include Gizmo::Helpers

  config.before(:suite) do
    Gizmo.configure do |gizmo|
      gizmo.mixin_dir = File.join(File.dirname(__FILE__), '../features/support/pages/')
    end
  end
end
