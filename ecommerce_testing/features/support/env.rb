require 'selenium-webdriver'
require 'cucumber'
require 'rspec'

Before do
  options = Selenium::WebDriver::Chrome::Options.new
  options.add_argument('--headless')  # Optional: Run Chrome in headless mode
  @driver = Selenium::WebDriver.for :chrome, options: options
end

After do
  @driver.quit if @driver  # Safely close the browser after each scenario
end
