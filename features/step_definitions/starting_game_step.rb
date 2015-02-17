Given(/^I am on the homepage$/) do
  visit '/'
end

When(/^I follow "(.*?)"$/) do |link|
  click_on(link)
end

Then(/^I should see "(.*?)"$/) do |name|
  fill_in(name)
end