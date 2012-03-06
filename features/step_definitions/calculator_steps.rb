Given /^I have a calculator$/ do
  @page = CalculatorPage.new $browser
  @page.goto
end

When /^I enter (.*)$/ do |number|
  method = { '2' => :two, '4' => :four }[number]
  @page.send method
end

When /^I press (.*)$/ do |button|
  @page.send button.to_sym
end

Then /^it displays (.*)$/ do |result|
  @page.display.should == result
end

