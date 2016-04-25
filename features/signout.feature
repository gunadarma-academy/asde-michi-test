Feature: Sign out from the app

  Background:
    Given a user is already signed in

  Scenario: User is able to sign out
    Given user has the app token (JWT) or session (cookies)
    When user clicks sign out button
    Then user is able to sign out
    And redirected to the landing page
