Feature: Handling Conflicting Directions
  As a user asking for directions
  I want to handle multiple helpers giving conflicting directions
  So that I can decide which directions to follow

  Scenario Outline: Choosing between conflicting directions from multiple helpers
    Given there are two helpers offering directions
    When I ask both helpers for directions to the football match
    Then I should receive two different sets of directions
    And I choose the set of directions that seem more reliable

  Examples:
    | helper1_response                                | helper2_response                                | chosen_response                                |
    | "Go straight and then turn left after two blocks." | "Take a right and then the first left."            | "Go straight and then turn left after two blocks." |
