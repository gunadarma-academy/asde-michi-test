Feature: Sign in to the app

  Background:
    Given a visitor is on the sign in page

  Scenario Outline: Visitor is able to sign in with email and password
    Given user <email> filled the email field
    And user <pass> filled the password field
    When user clicks the login button
    Then user <result> to sign in and <result> to get the the app session (cookies)

    Examples:
      | email   | pass    | result  |
      | has     | has     | succeed |
      | has     | has not | failed  |
      | has not | has     | failed  |
      | has not | has not | failed  |
