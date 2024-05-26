Feature: Getting Landmark Directions
  As a user asking for directions
  I want to receive directions to nearby landmarks
  So that I can navigate closer to my destination even if exact directions are not known

  Scenario: Getting directions from a helper with limited knowledge
    Given there is a helper with limited knowledge on the street
    When I ask for directions to the football match
    Then the helper provides directions to the nearest landmark instead of the stadium
