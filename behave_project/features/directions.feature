Feature: Directions to Football Match
  As a visitor wanting to attend the football match
  I want to get directions from a helper on the street
  So that I can easily find my way to the stadium

  Scenario Outline: Getting directions from different types of helpers
    Given there is a <type> helper on the street
    When I ask for directions to the football match
    Then the helper provides me with "<response>"

  Examples:
    | type          | response                                            |
    | knowledgeable | Go straight and then turn left after two blocks.    |
    | unsure        | I'm not sure, please use GPS.                       |
