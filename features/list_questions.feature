Feature: List all available questions

  Scenario: User is able to see all the available questions
    Given Application read the Question database
    When User accesses the home page
    Then User is able to see all questions
