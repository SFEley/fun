Then /^I should see "([^\"]*)" before "([^\"]*)"$/ do |arg1, arg2|
  response.should contain(/#{Regexp.escape(arg1)}.*#{Regexp.escape(arg2)}/m)
end
