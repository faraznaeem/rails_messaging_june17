Feature: Deleting a message
  In order to delete a message

Background:
  Given the user "bob" exist
  And "bob" has the message "hi"
  And I visit "Conversation" page

@javascript
Scenario:
  When show me the page
  And I click "Move to trash" button
  Then I should see a "Are you sure" alert
  And I click "ok" button
