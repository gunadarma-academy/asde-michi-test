Feature: Logout from the app

Scenario: User is able to log out
  Given user has the Arlin session (cookies)
  When user clicks Logout button
  Then user is able to log out from Arlin website

Scenario: User is already logged out
  Given user does not have the Arlin session (cookies)
  When user clicks Logout button
  Then user will be redirected to Arlin main page
