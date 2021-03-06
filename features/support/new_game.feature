Feature: Starting the game
  In order to play battleships
  As a nostalgic player
  I want to start a new game

  Scenario: starting game
    Given I am on the homepage
    When I follow "New Game"
    Then I should see "What's your name?"

  Scenario: Registering
      Given I am on the play page
      When I enter "My name"
      Then I should see the board

  Scenario: Place ships
        Given I am on the board page
        When I can see the "ships"
        And I pick a ship
        Then I should be able to place it