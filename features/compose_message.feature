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
    Given I visit "landing" page
    And I click "Inbox" button
    And I click "Compose" button
    And I select "lisa" from the recipient list
    And I fill in "Body" with "good"
    And I click "Send Message" button
    Then I should see "We're sorry, but something went wrong"

  Scenario: Composing a message
    Given I visit "landing" page
    And I click "Inbox" button
    And I click "Compose" button
    And I select "lisa" from the recipient list
    When I fill in "Subject" with "Hello"
    And I fill in "Body" with "good"
    And I click "Send Message" button
    Then I should see "Your message was successfully sent!"
