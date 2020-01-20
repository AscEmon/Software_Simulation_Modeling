# ta101_if_statement.feature

Feature: TA101 If Statement

  Scenario: Demonstrate use of if statements in step definitions
    Given I open a browser
    And I maximize the browser
    When I go to url "http://the-internet.herokuapp.com/dynamic_controls"

    Then I see the button with text "Remove"

    When I click the button with text "Remove"
    And I wait for 4 seconds

    Then I see the button with text "Add"

    Then I see the button with text "Remove"

    Then I close the browser
