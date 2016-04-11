Feature: Login into the app

Scenario Outline: User is able to log in without correct credentials
  Given user <user> filled the username field
  And user <pass> filled the password field
  When user clicks the Login button
  Then user <result> to log in and does not get the app session (cookies)

  Examples:
    | user    | pass    | result |
    | has     | has     | fails  |
    | has     | has not | fails  |
    | has not | has     | fails  |
    | has not | has not | fails  |

Scenario Outline: User is able to log in with correct credentials
  Given user <user> filled the username field
  And user <user> filled the password field
  When user clicks the login button
  Then user <result> to log in and <get> the app session (cookies)

  Examples:
    | user    | pass    | result    | get          |
    | has     | has     | successes | gets         |
    | has     | has not | fails     | does not get |
    | has not | has     | fails     | does not get |
    | has not | has not | fails     | does not get |

Scenario Outline: User is able to log in with Twitter authentication
  Given user <click> clicked the Twitter login button
  And user <auth> the Twitter token authorization
  When Twitter page has been redirected to app
  Then user <result> to log in and <get> the app session (cookies)

  Examples:
    | click   | auth    | result    | get          |
    | has     | has     | successes | gets         |
    | has     | has no  | fails     | does not get |
    | has not | has no  | fails     | does not get |
	
Scenario: User is already logged in Arlin 
  Given user has the app session (cookies)
  When user opens the Login page
  Then user will be redirected to home page

