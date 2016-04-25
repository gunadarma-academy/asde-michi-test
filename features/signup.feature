Feature: Sign up for a user account

  Background:
    Given a visitor is on the sign up page

  Scenario Outline: Visitor is able to sign up with username, email, password
    Given user <user> filled the username field
    And user <email> filled the email field
    And user <pass> filled the password field
    When user clicks the sign up button
    Then user <result> to sign up

    Examples:
      | user    | email   | pass    | result  |
      | has     | has     | has     | succeed |
      | has not | has     | has     | failed  |
      | has     | has not | has     | failed  |
      | has     | has     | has not | failed  |
      | has not | has not | has     | failed  |
      | has     | has not | has not | failed  |
      | has not | has not | has not | failed  |
