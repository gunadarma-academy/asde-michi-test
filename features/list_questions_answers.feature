Feature: List question’s answers

  As a visitor or user of Arlin,
  I am able to view the question's answers
  So that I can find out the answers I'm looking for

  Background:
    Given the app already retrieve all the questions and its answers data

  Scenario: user is able to read all answers of the 1st question
    When user clicks the the 1st question on the list
    Then user is able to read the 1st question's answers

  Scenario: user is able to read all answers of the 10th question
    When user clicks the 10th question on the list
    Then user is able to read the 10th question's answers
