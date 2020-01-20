Feature: Adding

  Scenario: Add two numbers
    Given the input "3+3"
      When the calculator is run
      Then the output should be "5"

  Scenario Outline: Add two numbers
    Given the input "<input>"
    When the calculator is run
    Then the output should be "<output>"
    Examples:
    | input | output |
    | 2+2+2 | 6      |
    | 98+1  | 99     |
