
Given(/^the following users exist$/) do |table|
  table.hashes.each do |user|
    User.create(user)
  end
end

Given(/^I am logged in as "([^"]*)"$/) do |name|
  user = User.find_by(name: name)
  #user = FactoryGirl.create(:user)
  login_as(user, :scope => :name)
  visit root_path
end

Given(/^I visit '\/inbox' page$/) do
  visit '/'
end

Then(/^I should see a label with number of messages\.$/) do
  find_link('/mailbox/inbox').visible?
end
