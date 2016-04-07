Feature: Posting an answer to a question

Scenario Outline: User is able to answer a question
  Given user clicked the answer field
  And user <answer> filled the answer field
  When user clicks the submit button
  Then user is <status> to post an answer to the question

  Examples:
    | answer  | status   |
    | has     | able     |
    | has not | not able |
