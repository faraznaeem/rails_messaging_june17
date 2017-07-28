Given(/^the following users exist$/) do |table|
  # table is a Cucumber::MultilineArgument::DataTable
  pending # Write code here that turns the phrase above into concrete actions
end

Given(/^I send a mail to "([^"]*)"$/) do |arg1|
  @receiver = User.find_by(name: name)
  @user.send_message(@receiver, 'Lorem ipsum...', 'Subject')
end

Given(/^I am logged in as "([^"]*)"$/) do |name|
  @user = User.find_by(name: name)
  login_as(@user, scope: :user)
end

Then(/^I should have "([^"]*)" messages$/) do |expected_count|
  count = @receiver.mailbox.inbox.count
  expect(count).to eq expected_count.to_i
end
