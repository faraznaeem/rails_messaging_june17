When(/^I visit "([^"]*)" page$/) do |page|
  visit root_path
end

When(/^I click "([^"]*)"$/) do |button|
  click_link_or_button(button)
end

Then(/^I should be on "([^"]*)" page$/) do |arg1|
  pending # Write code here that turns the phrase above into concrete actions
end

When(/^I fill in "([^"]*)" with "([^"]*)"$/) do |arg1, arg2|
  pending # Write code here that turns the phrase above into concrete actions
end

When(/^I filll in "([^"]*)" with "([^"]*)"$/) do |arg1, arg2|
  pending # Write code here that turns the phrase above into concrete actions
end

When(/^I click "([^"]*)" button$/) do |arg1|
  pending # Write code here that turns the phrase above into concrete actions
end

Then(/^I should see the message "([^"]*)"$/) do |arg1|
  pending # Write code here that turns the phrase above into concrete actions
end
