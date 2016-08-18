Capybara.configure do |config|
  config.run_server = false
  config.default_driver = :selenium
  config.app_host = "http://pre.tripinsiders.com/cn"
end
Capybara.ignore_hidden_elements = false
