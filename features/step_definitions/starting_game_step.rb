Given(/^I am on the homepage$/) do
  visit '/'
end

When(/^I follow "(.*?)"$/) do |arg1|
  click_on(arg1)
end

Then(/^I should see "(.*?)"$/) do |name|
fill_in('name', :with => 'John')
end