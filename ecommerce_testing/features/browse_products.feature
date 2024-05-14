Feature: Product Browsing

  Scenario: Viewing product details
    Given I am on the homepage
    When I click on a product
    Then I should see the product details
