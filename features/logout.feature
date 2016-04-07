
Feature: Logout

Scenario: User wants to log out from Arlin website
  Given User has the Arlin session (cookies)
  When User clicks Logout button
  Then User is able to log out from Arlin website

Scenario: User wants to log out from Arlin website
  Given User does not have the Arlin session (cookies)
  When User clicks Logout button
  Then User will be redirected to Arlin main page