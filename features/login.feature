Feature: Login into the app

Scenario Outline: User is able to log in without correct credentials
  Given user <user> filled the Username field
  And user <pass> filled the Password field
  When user clicks the Login button
  Then user <fail> to log in

  Examples:
    | user    | pass    | fail |
    | has     | has not | fail |
    | has not | has     | fail |
    | has not | has not | fail |

Scenario Outline: User is able to log in with correct credentials
  Given user has filled the correct username in Username field
  And user has filled the wrong password in Password field
  When user clicks the Login button
  Then user fails to log in

Scenario: User wants to use Arlin
  Given user has filled the wrong username in Username field
  And user has filled the correct password in Password field
  When user clicks the Login button
  Then user fails to log in

Scenario: User wants to use Arlin
  Given user has filled the wrong username in Username field
  And user has filled the wrong password in Password field
  When user clicks the Login button
  Then user fails to log in














Scenario: User wants to use Arlin
  Given user has filled the correct username in Username field
  And user has filled the correct password in Password field
  When user clicks the Login button
  Then user get the Arlin session (cookies) and is able to use Arlin functionality

Scenario: User wants to use Arlin
  Given user clicks the Twitter Login button
  And user has the Twitter token authorization
  When Twitter page has been redirected to Arlin
  Then user get the Arlin session (cookies) and is able to use Arlin functionality

Scenario: User wants to use Arlin
  Given user clicks the Twitter Login button
  And user does not have the Twitter token authorization
  When Twitter page has been redirected to Arlin
  Then user does not get the Twitter token authorization and fails to log in

Scenario: User wants to use Arlin
  Given user has the Arlin session (cookies)
  When user opens the Login page
  Then user will be redirected to Arlin main page and is able to use Arlin functionality
