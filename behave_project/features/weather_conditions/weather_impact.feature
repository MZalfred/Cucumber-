Feature: Adaptive Navigation Assistance
  As a visitor en route to a football match during adverse weather conditions
  I want to receive effective alternative navigation suggestions
  So that I can safely and efficiently reach my destination despite weather-related disruptions

  Scenario: Receiving Alternative Directions in Heavy Rain
    Given a knowledgeable helper is available at the main intersection
    And heavy rainfall has led to the closure of several primary roads
    When I request directions to the nearest football stadium
    Then the helper should provide a safe and efficient alternative route that circumvents the closed roads
