require 'capybara/cucumber'
require 'httparty'

Capybara.default_driver = :selenium
Capybara.javascript_driver = :webkit
Capybara.default_wait_time = 50
Capybara.default_selector = :xpath
