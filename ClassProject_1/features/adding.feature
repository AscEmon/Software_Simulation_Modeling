Feature: Adding
We are trying to develop an calculator application which will help us to do a summation of multiple numbers.
Scenario Outline: Adding two numbers
  Given the input "<input>"
  When the calculator is run
  Then the output should be "<output>"
  Examples:
  | input | output  |
  | 2+2   | 4       |
  | 2-2   | 0       |
  | 99+1  | 100     |
  | 100+1 | 102     |
  | 99+10-23| 86    |
  | 4/2     | 2     |
  |2/0      ||
