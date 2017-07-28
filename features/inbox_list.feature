Feature: Inbox list
  As a user
  In order to see the messages, I have received
  I should be able visit an inbox page and view its content

  Background:
    Given the following users exist
      | name      | email      | password |
      | bob       | bob12345   | password |
      | lisa      | lisa12345  | password |

  Scenario: Reading a message
    Given I am logged in as "bob"
    And I send a mail to "lisa"
    And I am on the "home page"
    And I click on the "Logout" link
    Given I am logged-in as "lisa"
    And I am on the "home page"
    And I click on the "Inbox" link
    Then I should have "1" messages
    And I click on the "View" link
    Then I should have "0" messages
