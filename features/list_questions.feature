Feature: List all available questions

  Scenario: User is able to see all the available questions
    Given app read some the available questions
    When user accesses the home page
    Then user is able to see all the questions
