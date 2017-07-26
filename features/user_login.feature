Feature: As a user
In order to access the app when I already have an account
I should be able to login

Background:
  Given the following user exist
    | name      | password          | email         |
    | bob       | bob12345          | bob@bob.com   |
    | lisa      | lisa12345         | lisa@lisa.com |

Scenario: User Login
  When I visit "landing" page
  And I click "Login" button
  Then I should be on "Log in" page
  And I fill in "Email" with "bob@bob.com"
  And I fill in "Password" with "bob12345"
  And I click "Log in" button
  Then I should see the message "Signed in successfully."

Scenario: User Login with invalid password
  When I visit "landing" page
  And I click "Login" button
  Then I should be on "Log in" page
  And I fill in "Email" with "bob@bob.com"
  And I fill in "Password" with "bob1234S"
  And I click "Log in" button
  Then I should see the message "Invalid Email or password."
