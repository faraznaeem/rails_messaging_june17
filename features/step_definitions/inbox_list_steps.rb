
Given(/^I send a mail to "([^"]*)"$/) do |name|
  @receiver = User.find_by(name: name)
  @user.send_message(@receiver, 'Lorem ipsum...', 'Subject')
end

Given(/^I am on the "([^"]*)"$/) do |user|
  user = User.find_by(name: name)
  login_as(user, scope: :user)
  visit root_path
end

Then(/^I should have "([^"]*)" messages$/) do |arg1|
  pending # Write code here that turns the phrase above into concrete actions
end

Then(/^I click on the "([^"]*)" link$/) do |arg1|
  pending # Write code here that turns the phrase above into concrete actions
end

Given(/^the following users exist$/) do |table|
  # table is a Cucumber::MultilineArgument::DataTable
  pending # Write code here that turns the phrase above into concrete actions
end

Given(/^I am logged in as "([^"]*)"$/) do |arg1|
  pending # Write code here that turns the phrase above into concrete actions
end
