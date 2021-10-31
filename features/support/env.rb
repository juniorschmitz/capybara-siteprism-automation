# frozen_string_literal: true

require 'selenium-webdriver'
require 'capybara'
require 'capybara/dsl'
require 'site_prism'
require 'pry'
require 'cucumber'
require 'rspec'
require 'faker'

ENVIRONMENT = ENV['ENVIRONMENT']

Capybara.configure do |config|
  config.default_driver = :selenium_chrome
end
