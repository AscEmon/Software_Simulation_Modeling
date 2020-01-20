Given(/^the input "([^"]*)"$/) do |input|
  @input=input # 2+2
end

When(/^the calculator is run$/) do
  @output= `ruby adding.rb #{@input}`
end

Then(/^the output should be "([^"]*)"$/) do |expected_output|
  @expected_output=expected_output
  @expected_output.should==@output
end
