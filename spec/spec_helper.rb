require 'rubygems'
require 'bundler/setup'

require 'rspec'
require 'gizmo'
require 'capybara'
require 'capybara/dsl'

Capybara.register_driver :selenium_chrome do |app|
  Capybara::Selenium::Driver.new(app, browser: :chrome)
end

Capybara.default_driver = :selenium_chrome
Capybara.run_server = false

RSpec.configure do |config|
  config.include Capybara::DSL
  config.include Gizmo::Helpers

  config.before(:suite) do
    Gizmo.configure do |gizmo|
      gizmo.mixin_dir = File.join(File.dirname(__FILE__), '../features/support/pages/')
    end
  end
end
