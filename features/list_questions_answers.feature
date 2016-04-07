Feature: List Question’s Answers

  Scenario: User is able to read the answer of the question
    Given App read the Question database and its Answer database
    When User clicks the chosen Question box
    Then User is able to read the question's answer
