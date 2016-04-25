Feature: View homepage features on landing page

  As a visitor of Arlin,
  I am able to view the landing, explanation, and signup/signin button
  So that I can learn why, how, and what Arlin is
  Also I can know how to sign up and sign in to use it

  Background:
    Given a visitor is on the landing page

  Scenario: Landing page
    When the page is fully loaded
    Then I can read the explanation or tagline about Arlin

  Scenario: See the page title
    When the page is fully loaded
    Then I should see "Arlin" as the page title

  Scenario: Sign up from landing
    Given I have read the explanation about Arlin
    When I click the Sign Up button
    Then I am redirected to the sign up page

  Scenario: Sign in from landing
    Given I have read the explanation about Arlin
    When I click the Sign In button
    Then I am redirected to the sign in page
