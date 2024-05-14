Given('I am on the homepage') do
  @driver.navigate.to "http://example.com"
end

When('I click on a product') do
  @driver.find_element(:css, "a.product_link").click
end

Then('I should see the product details') do
  details = @driver.find_element(:css, "div.product_details")
  expect(details.displayed?).to be true
end
