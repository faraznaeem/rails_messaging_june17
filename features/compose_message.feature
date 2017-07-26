Feature: Compose messages
  As a user
  In order to send a messeage
  I should be able to compose a message

  Background:
    Given the following user exist
      | name      | password          | email         |
      | bob       | bob12345          | bob@bob.com   |
      | lisa      | lisa12345         | lisa@lisa.com |

    And I am logged in as "bob"

  Scenario: Composing a message
    Given I click on the "Inbox"
    And I click on the "Compose" button
    And I select "lisa" from the recipient list
    When I enter "hello" in "Subject"
    And I enter "good" in "Message"
    And I click on the "Send Message" button
    Then I should see "Your message was successfully sent!"