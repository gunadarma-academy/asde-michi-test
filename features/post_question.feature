Feature: Posting a question

Scenario Outline: User is able to post a question
  Given user clicked the title field
  And user <title> filled the title field
  And user clicked the description field
  And user <desc> filled the description field
  When user clicks the submit button
  Then user is <post> to post a question

  Examples:
    | title   | desc    | post     |
    | has     | has     | able     |
    | has     | not has | not able |
    | has not | has     | not able |
    | has not | has not | not able |
