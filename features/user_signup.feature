Feature: As a user
  In order to access the application
  I need to register an accoun

Scenario: Register new user
  When I visit "landing" page
  And I click "Sign up"
  Then I should be on "Sign up" page
  When I fill in "Name" with "John"
  And I fill in "Email" with "john@doe.com"
  And I fill in "Password" with "abcde1234"
  And I filll in "Password confirmation" with "abcde1234"
  And I click "Create" button
  Then I should see the message "Welcome! You have signed up successfully."
