Feature: Creating player
  In order to play the game
  As a nostalgic player
  I want to input my name

  Scenario: Registering
    Given I am on the play page
    When I enter "My name"
    Then I should see the board