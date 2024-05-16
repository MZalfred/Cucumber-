Given('I am on the homepage') do
  @driver.navigate.to "http://localhost:8000/product_page.html"
  puts "Current URL: #{@driver.current_url}"
  puts "Page Title: #{@driver.title}"
end


When('I click on a product') do
  wait = Selenium::WebDriver::Wait.new(timeout: 10) # waits up to 10 seconds
  product_link = wait.until {
    element = @driver.find_element(:css, "a.product_link")
    element if element.displayed?
  }
  puts "Element found, proceeding to click."
  product_link.click
end


Then('I should see the product details') do
  details = @driver.find_element(:css, "div.product_details")
  expect(details.displayed?).to be true
end
