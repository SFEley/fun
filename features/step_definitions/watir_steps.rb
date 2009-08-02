Given /^I am on (.*)$/ do |page|
  Browser.goto path_to(page)
end

When /^I click on "(.*)"$/ do |link|
  Browser.link(:text, link).click
end

When /^I fill in "(.*)" with "(.*)"$/ do |field, value|
  l = Browser.label(:text, /#{field}/i)
  f = Browser.text_field(:id, l.for)
  f.set(value)
end

When /^I press "([^\"]*)"$/ do |text|
  b = Browser.button(:value, /#{field}/i)
  b.click
end

Then /^I should see "([^\"]*)"$/ do |text|
  Browser.text.should =~ text
end
