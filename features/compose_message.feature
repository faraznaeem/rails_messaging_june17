Feature: Compose messages
  As a user
  In order to send a message
  I should be able to compose a message

  Background:
    Given the following user exist
      | name      | password          | email         |
      | bob       | bob12345          | bob@bob.com   |
      | lisa      | lisa12345         | lisa@lisa.com |

    And I am logged in as "bob"

  Scenario: User doesn't enter in required subject field
    Given I am on landing page
    And I click on the "Inbox" button
    And I click on the "Compose" button
    And I select "lisa" from the recipient list
    And I enter "good" in "Body"
    And I click on the "Send Message" button
    Then I should see "We're sorry, but something went wrong"

  Scenario: Composing a message
    Given I am on landing page
    And I click on the "Inbox" button
    And I click on the "Compose" button
    And I select "lisa" from the recipient list
    When I enter "hello" in "Subject"
    And I enter "good" in "Body"
    And I click on the "Send Message" button
    Then I should see "Your message was successfully sent!"
