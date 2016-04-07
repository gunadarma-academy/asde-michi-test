Feature: Login into the app

Scenario: User wants to use Arlin
  Given user has filled the Username field
  And user has not filled the Password field
  When user clicks the Login button
  Then user fails to log in

Scenario: User wants to use Arlin
  Given user has not filled the Username field
  And user has filled the Password field
  When user clicks the Login button
  Then user fails to log in

Scenario: User wants to use Arlin
  Given user has not filled the Username field
  And user has not filled the Password field
  When user clicks the Login button
  Then user fails to log in

Scenario: User wants to use Arlin
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
