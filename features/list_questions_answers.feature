Feature: List question’s answers

  Scenario: user is able to read all answers of the first question
    Given app retrieve all the questions and its answers data
    When user clicks the the first available question
    Then user is able to read the question's answer
