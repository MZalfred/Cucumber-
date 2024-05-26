Feature: Basic Directions to Football Match
  As a visitor wanting to attend the football match
  I want to get directions from a helper on the street
  So that I can easily find my way to the stadium

  Scenario: Getting directions from a knowledgeable helper
    Given there is a knowledgeable helper on the street
    When I ask for directions to the football match
    Then the helper provides me with "Go straight and then turn left after two blocks."
