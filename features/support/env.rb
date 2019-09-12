require 'rspec'
require 'capybara'
require 'capybara/cucumber'
require 'selenium-webdriver'
require 'faker'

Capybara.configure do |config|
  config.default_driver = :selenium_chrome
  config.app_host = "https://www.pokemon.com/us/pokedex"
  config.default_max_wait_time = 5
end