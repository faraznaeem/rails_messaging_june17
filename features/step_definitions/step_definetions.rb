Given(/^the following user exist$/) do |table|
  table.hashes.each do | user |
    User.create(user)
  end
end

Given(/^I am logged in as "([^"]*)"$/) do |name|
  user = User.find_by(name: name)
  login_as(user, scope: :user)
end

Given(/^I click on the "([^"]*)"$/) do |arg1|
  pending # Write code here that turns the phrase above into concrete actions
end

Given(/^I click on the "([^"]*)" button$/) do |arg1|
  pending # Write code here that turns the phrase above into concrete actions
end

When(/^I enter information in "([^"]*)"$/) do |arg1|
  pending # Write code here that turns the phrase above into concrete actions
end

Then(/^I should see "([^"]*)"$/) do |arg1|
  pending # Write code here that turns the phrase above into concrete actions
end