
Feature: Posting Question

Scenario Outline: User post a question
  Given user <title> filled the title field
  And user <desc> filled the description field
  When user click the submit button
  Then user is <post> to post a question

  Examples:
    | title   | desc    | post     |
    | has     | has     | able     |
    | has     | not has | not able |
    | has not | has     | not able |
    | has not | has not | not able |
