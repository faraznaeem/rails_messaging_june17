Feature: Deleting a message
  In order to delete a message

Scenario:
  Given I visit "landing" page
  And I click "view" button
  Then I should be on "Conversation" page

@javascript
Scenario:
  Given I am on the "Conversation" page
  And I click "Move to trash" button
  Then I should see a "Are you sure" alert
  And I click "ok" button
