Feature: List all available questions

  As a visitor or user of Arlin,
  I am able to view all the available questions
  So that I can find out if there's a case I'm interested in

  Background:
    Given the app already retrieve all the questions list

  Scenario: User is able to see all the available questions
    When user accesses the home page
    Then user is able to see all the questions

  Scenario: user is able to read the details of the 1st question
    When user clicks the 1st question on the list
    Then user is able to read the 1st question details
