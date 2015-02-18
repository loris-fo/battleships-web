Given(/^I'm on the play page$/) do
  visit '/play'
end

Given(/^I don't enter my name into the form$/) do
  fill_in('name', :with => '')
end

When(/^I click "(.*?)"$/) do |arg1|
  click_on(arg1)
end

Then(/^I receive an error message$/) do
  pending
end