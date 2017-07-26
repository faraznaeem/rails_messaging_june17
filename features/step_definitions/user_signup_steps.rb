When(/^I visit "([^"]*)" page$/) do |page|
  visit root_path
end

Then(/^I should be on "([^"]*)" page$/) do |page_name|

  case page_name
    when "Sign up"
      path = "/users/sign_up"
    when "Log in"
      path = "/users/sign_in"
    else
      puts "Path missing!"
  end

  expect(page).to have_current_path(path)

end

When(/^I fill in "([^"]*)" with "([^"]*)"$/) do |field, value|
  fill_in(field, with: value)
end

When(/^I click "([^"]*)" button$/) do |button|
  click_link_or_button(button)
end

Then(/^I should see the message "([^"]*)"$/) do |page|
  expect(page).to have_content
end
