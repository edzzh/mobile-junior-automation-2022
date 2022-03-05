Feature: Foreveryng Authorization Feature
  Background: Preconditions

  Scenario: Logging in Foreveryng with an existing user
    Given User has open login page
    And User has input the email and password
    When User clicks on the login button
    Then User sees the my profile button
