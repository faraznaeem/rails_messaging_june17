Then(/^show me the page$/) do
  save_and_open_page
end

When(/^I visit "([^"]*)" page$/) do |page_name|

  case page_name
  when 'landing'
    path = root_path
  else
    raise 'Path missing!'
  end

  visit path

end

Then(/^I should be on "([^"]*)" page$/) do |page_name|
  case page_name
  when 'Sign up'
    path = new_user_registration_path
  when 'Log in'
    path = new_user_session_path
  else
    raise 'Path missing!'
  end

  expect(page).to have_current_path path

end

When(/^I fill in "([^"]*)" with "([^"]*)"$/) do |field, value|
  fill_in field, with: value
end

When(/^I click "([^"]*)" button$/) do |button|
  click_link_or_button button
end

Then(/^I should see the message "([^"]*)"$/) do |message|
  expect(page).to have_content message
end

Given(/^the user "([^"]*)" exist$/) do |name|
  FactoryGirl.create(:user, name: name)
end

