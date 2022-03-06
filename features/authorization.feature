Feature: Foreveryng Authorization Feature

  Background: Preconditions
    Given User has open login page

  @Login
  Scenario Outline: Logging in Foreveryng with an existing user
    Given User inputs <email> into the email field
    And User inputs <password> into the password field
    When User clicks on the login button
    Then User opens my profile page
    And The logged in users name is "<name>"
    And The logged in users email is "<email>"
    Examples:
      | email                 | password          | name     |
      | tdltdl@gmail.com      | SecretPassword123 | YoloBolo |
      | spring22tdl@gmail.com | Passeod12         | RubyEe   |
      | hjdhsjdhj@gmail.com   | Jdjksdk           | Jjdd     |

  @SignUp
  Scenario: Register a new user
    Given User goes to Sign Up page
    And User inputs new user credentials
    And User click Sign Up
    And User skips the refer code screen
    And User skips the phone verification screen
    When User opens my profile page
    Then The random email used for signup is visible
