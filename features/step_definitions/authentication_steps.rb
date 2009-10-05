Given /^a username "([^\"]*)"$/ do |username|
  ENV["FUN_ADMIN_USER"] = username
end

Given /^a password "([^\"]*)"$/ do |password|
  ENV["FUN_ADMIN_PASS"] = password
end

When /^I authenticate with "([^\"]*)" and "([^\"]*)"$/ do |username, password|
  basic_auth(username, password)
end

Given /^I am authenticated$/ do
  Given 'a username "foo"'
  Given 'a password "bar"'
  basic_auth('foo','bar')
end

Given /^I am not authenticated$/ do
  Given 'a username "foo"'
  Given 'a password "bar"'
  basic_auth('','')
end