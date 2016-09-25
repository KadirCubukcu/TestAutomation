#encoding: UTF-8
require 'capybara'
require 'capybara/dsl'
require 'capybara/poltergeist'
require 'capybara/rspec'
require 'faker'
require 'json'
require 'mongo'
require 'bson'
require 'net/http'
require 'os'
require 'pry'
require 'pry-byebug'
require 'rubygems'
require 'securerandom'
require 'selenium-webdriver'
require 'tiny_tds'
require 'hyperresource'
require 'faraday'
require 'faraday-cookie_jar'
require 'rest-client'
require 'rspec/expectations'
chromedriver_path = File.join(File.absolute_path('../..', File.dirname(__FILE__)),"browsers","chromedriver.exe")
Selenium::WebDriver::Chrome.driver_path = chromedriver_path
Capybara.run_server = false

Capybara.default_driver = :selenium
Capybara.javascript_driver = :selenium
Capybara.default_selector = :css
Capybara.default_wait_time = 60
Capybara.ignore_hidden_elements = false
Capybara.exact = true


Capybara.register_driver :selenium do |app|
  browser = (ENV['BROWSER'] || 'firefox').to_sym
  Capybara::Selenium::Driver.new(app, :browser => browser)
end


World(Capybara::DSL)
