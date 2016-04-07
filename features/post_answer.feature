Feature: Posting Answer

Scenario Outline: User wants to answer the question
  Given user <answer> filled the answer field
  When user click the submit button
  Then user is <status> to answer a question

  Examples:
    | answer  | status   |
    | has     | able     |
    | has not | not able |
