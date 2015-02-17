Given(/^I am on the play page$/) do
  visit '/play'
end

When(/^I enter "(.*?)"$/) do |name|
  fill_in('name', :with => 'John')
end

Then(/^I should see the board$/) do
  visit '/board'
end