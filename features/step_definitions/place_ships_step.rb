Given(/^I am on the board page$/) do
  visit '/board'
end

When(/^I can see the "(.*?)"$/) do |arg1|
  page.has_content?('a1')
end

When(/^I pick a ship$/) do
  visit '/board'
end

Then(/^I should be able to place it$/) do
  visit '/board'
end