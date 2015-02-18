Feature: Starting the game
  In order to play battleships
  As a nostalgic player
  I want to start a new game

  Scenario: Registering
    Given I am on the homepage
    When I follow "New Game"
    Then I should see "What's your name?"

  Scenario: No name
      Given I'm on the play page
      And I don't enter my name into the form
      When I click "submit"
      Then I receive an error message