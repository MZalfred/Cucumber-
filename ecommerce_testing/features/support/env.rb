require 'selenium-webdriver'
require 'cucumber'
require 'repec'

Given('I am on the homepage') do
  @driver.get 'http://example.com'
end

When('I click on a product') do
  @driver.find_element(:css, 'product_selector').click
end

Then('I should see the product details') do
  expect(@driver.find_element(:css, 'details_selector').displayed?).to be true
end

Before do
  @driver = Selenium::WebDriver.for :chrome
end

After do
  @driver.quit
end
