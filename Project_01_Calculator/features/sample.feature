Feature: Cash Deposite
Here the customer will try to deposit a numerous amount to money i.e. ($100, $100.50) etc
and the system will accept the amount

Scenario Outline: Attempt to deposit $100
  Given I have deposited $<input> in my Account
  Then the balance of my Account should be $<output>
  And send a mobile message showing $<msg> deposited
  Examples:
  | input | output | msg   |
  | 100   | 101    | 100   |
  | 0.50  | 0.50   | 0.50  |
  | 20.35 | 20.55  | 20.35 |
  | 100.75| 100.75 | 100.75|
  | 1     | 1      | 1     |
  | 0.255 | 0.255  | 1.255 |
