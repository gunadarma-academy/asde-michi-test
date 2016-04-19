Feature: View homepage features on landing page
  As a visitor of Arlin
  I am able to view the landing, explanation, and signup/signin button
  So that I can learn why, how, and what Arlin is also use it

  Scenario: Landing page
    Given I am on the Arlin website
    When I quickly on the landing page
    Then I can read the explanation about Arlin

  Scenario: See the page title
    Given I am on the landing page
    Then I should see "Arlin" as the page title

  Scenario: Sign up from landing
    Given I have read the explanation about Arlin
    When I click the Sign Up button
    Then I am redirected to sign up page

  Scenario: Sign in from landing
    Given I have read the explanation about Arlin
    When I click the Sign In button
    Then I am redirected to sign in page
