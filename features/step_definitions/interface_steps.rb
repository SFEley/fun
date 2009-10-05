Then /^I should see "([^\"]*)" before "([^\"]*)"$/ do |arg1, arg2|
  response.should contain(/#{Regexp.escape(arg1)}.*#{Regexp.escape(arg2)}/m)
end

When /^I fill in "([^\"]*)" with the text$/ do |field, text|
  When %Q{I fill in "#{field}" with "#{text}"}
end
