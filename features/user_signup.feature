Feature: As a user
  In order to access the application
  I need to register an accoun

#Sad path
  Scenario: Register new user with invalid password and password confirmation not matching
    When I visit "landing" page
    And I click "Sign up" button
    Then I should be on "Sign up" page
    And I fill in "Email" with "john@doe.com"
    And I fill in "Password" with "abc123"
    And I click "Create" button
    Then I should see the message "Password confirmation doesn't match Password"
    And I should see the message "Password is too short (minimum is 8 characters)"
    And I should see the message "Name can't be blank"
  Scenario: Register new user

#Happy path
    When I visit "landing" page
    And I click "Sign up" button
    Then I should be on "Sign up" page
    When I fill in "Name" with "John"
    And I fill in "Email" with "john@doe.com"
    And I fill in "Password" with "abcde1234"
    And I fill in "Password confirmation" with "abcde1234"
    And I click "Create" button
    Then I should see the message "Welcome! You have signed up successfully."
    