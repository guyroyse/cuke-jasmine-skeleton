require 'page-object'

Given /^I am on the sample page$/ do
  @page = SamplePage.new $browser
  @page.goto
end

When /^I select (.*)$/ do |veracity|
  @page.send veracity.to_sym
end

Then /^I see (.*)$/ do |expected_result|
  @page.result.should == expected_result
end
