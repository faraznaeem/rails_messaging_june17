Given(/^I am on the "([^"]*)" page$/) do |trash|
  visit trash_conversation trash
end

Then(/^I should see a "([^"]*)" alert$/) do |page|
  page.driver.browser.switch_to.alert.accept
end
