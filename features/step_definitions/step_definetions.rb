Given(/^the following user exist$/) do |table|
  table.hashes.each do | user |
    User.create(user)
  end
end

Given(/^I am logged in as "([^"]*)"$/) do |name|
  user = User.find_by(name: name)
  login_as(user, scope: :user)
  visit '/'
end

Given(/^I click on the "([^"]*)"$/) do |link|
  click_link(link)
end

Given(/^I click on the "([^"]*)" button$/) do |button_name|
  click_link_or_button button_name
end

Given(/^I select "([^"]*)" from the recipient list$/) do |recipient|
  select recipient, from: "Recipient"
end

When(/^I enter "([^"]*)" in "([^"]*)"$/) do |content, input|
  fill_in input, with: content
end

Then(/^I should see "([^"]*)"$/) do |content|
  expect(page).to have_content content
end

