Feature: Login into the app

Scenario: User wants to use Arlin
  Given User has filled the Username field
  And User has not filled the Password field
  When User clicks the Login button
  Then User fails to log in

Scenario: User wants to use Arlin
  Given User has not filled the Username field
  And User has filled the Password field
  When User clicks the Login button
  Then User fails to log in

Scenario: User wants to use Arlin
  Given User has not filled the Username field
  And User has not filled the Password field
  When User clicks the Login button
  Then User fails to log in

Scenario: User wants to use Arlin
  Given User has filled the correct username in Username field
  And User has filled the wrong password in Password field
  When User clicks the Login button
  Then User fails to log in

Scenario: User wants to use Arlin
  Given User has filled the wrong username in Username field
  And User has filled the correct password in Password field
  When User clicks the Login button
  Then User fails to log in

Scenario: User wants to use Arlin
  Given User has filled the wrong username in Username field
  And User has filled the wrong password in Password field
  When User clicks the Login button
  Then User fails to log in

Scenario: User wants to use Arlin
  Given User has filled the correct username in Username field
  And User has filled the correct password in Password field
  When User clicks the Login button
  Then User get the Arlin session (cookies) and is able to use Arlin functionality

Scenario: User wants to use Arlin
  Given User clicks the Twitter Login button
  And User has the Twitter token authorization
  When Twitter page has been redirected to Arlin
  Then User get the Arlin session (cookies) and is able to use Arlin functionality

Scenario: User wants to use Arlin
  Given User clicks the Twitter Login button
  And User does not have the Twitter token authorization
  When Twitter page has been redirected to Arlin
  Then User does not get the Twitter token authorization and fails to log in

Scenario: User wants to use Arlin
  Given User has the Arlin session (cookies)
  When User opens the Login page
  Then User will be redirected to Arlin main page and is able to use Arlin functionality
