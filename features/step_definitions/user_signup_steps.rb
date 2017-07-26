When(/^I visit "([^"]*)" page$/) do |page|
  visit root_path
end

Then(/^I should be on "([^"]*)" page$/) do |page_name|
  expect(page).to have_current_path("/users/sign_up")
end

When(/^I fill in "([^"]*)" with "([^"]*)"$/) do |field, value|
  pending # Write code here that turns the phrase above into concrete actions
end

When(/^I click "([^"]*)" button$/) do |button|
  click_link_or_button(button)
end

Then(/^I should see the message "([^"]*)"$/) do |arg1|
  expect(page).to have_content
end
