Feature: Cash Withdrawal
  Scenario: Successful withdrawal from an account in credit
    Given I have $1000 in my account
    When  I request $20
    Then  $20 should be dispensed

  Scenario Outline: Transfer funds from savings into checking account
    Given I have deposited $<chk_account> in my Checking Account
    And I have deposited $<save_account> in my Savings Account
    When I transfer $<transfer> from my Savings Account into my Checking Account
    Then the balance of the Checking Account should be $<chk_balance>
    And the balance of the Savings Account should be $<save_balance>
    Examples:
    | chk_account | save_account  | transfer  | chk_balance | save_balance  |
    | 10          | 500           |  500      | 510         | 0             |
    | 10          | 900           |  500      | 510         | 400            |
