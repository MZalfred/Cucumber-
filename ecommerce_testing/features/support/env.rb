

require 'selenium-webdriver'
require 'cucumber'
require 'rspec'

Before do
  options = Selenium::WebDriver::Chrome::Options.new
  options.add_argument('--headless') # Uncomment if you don't want the browser to open up
  @driver = Selenium::WebDriver.for :chrome, options: options
end

After do
  @driver.quit
end
