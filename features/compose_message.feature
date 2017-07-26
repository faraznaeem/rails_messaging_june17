Feature: Compose messages
  As a user
  In order to send a messeage
  I should be able to compose a message

  Background:
    Given the following user exist
      | name      | password          | email       |
      | bob       | bob12345          | bob@bob.com |

    And I am logged in as "bob"

  Scenario: Composing a message
    Given I click on the "inbox"
    And I click on the "compose" button
    And I click on the "recipient" button
    When I enter information in "subject"
    And I enter information in "message"
    And I click on the "send message" button
    Then I should see "Your message was successfully sent!"