Feature: Inbox list
  As a user
  In order to see the messages, I have received
  I should be able to list the items in the inbox

Background:
  Given the following users exist
    | name      | password          | email         |
    | bob       | bob12345          | bob@bob.com   |
    | lisa      | lisa12345         | lisa@lisa.com |


 Scenario: List of inbox items
  Given I visit '/inbox' page
  Then I should see a label with number of messages.
