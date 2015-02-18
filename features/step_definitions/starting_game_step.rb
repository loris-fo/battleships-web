Given(/^I am on the homepage$/) do
  visit '/'
end

When(/^I follow "(.*?)"$/) do |arg1|
  click_on(arg1)
end

Then(/^I should see "(.*?)"$/) do |name|
body.should match(/#{name}/m)
end