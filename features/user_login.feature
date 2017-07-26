Feature: As a user
In order to access the app when I already have an account
I should be able to login

Scenario: User Login
  When I visit "landing" page
  And I click "Login" button
  Then I should be on "Log in" page
  And I fill in "Email" with "john@doe.com"
  And I fill in "Password" with ""
  And I click "Log in" button
  And show me the page
  Then I should see the message "Signed in successfully."
