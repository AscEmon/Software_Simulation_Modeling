Given(/^I have deposited \$(\d+) in my Account$/) do |input|
  #pending # Write code here that turns the phrase above into concrete actions
  @input=input
end

Then(/^the balance of my Account should be \$(\d+)$/) do |expected_output|
  #pending # Write code here that turns the phrase above into concrete actions
  @output = `ruby sample.rb #{@input}`
  @output.should == expected_output
  raise('Command failed!') unless $?.success?
end

Then(/^send a mobile message showing \$(\d+) deposited$/) do |msg|
  #pending # Write code here that turns the phrase above into concrete actions
  @output.should == msg
end

Given(/^I have deposited \$(\d+)\.(\d+) in my Account$/) do |arg1, arg2|
  #pending # Write code here that turns the phrase above into concrete actions
  @input=arg1+"."+arg2
end

Then(/^the balance of my Account should be \$(\d+)\.(\d+)$/) do |arg1, arg2|
  #pending # Write code here that turns the phrase above into concrete actions
  @expected_output= arg1+"."+arg2
  @expected_output=`ruby sample.rb #{@expected_output}`
  @output = `ruby sample.rb #{@input}`
  @output.should == @expected_output
  raise('Command failed!') unless $?.success?
end

Then(/^send a mobile message showing \$(\d+)\.(\d+) deposited$/) do |arg1, arg2|
  #pending # Write code here that turns the phrase above into concrete actions
  @msg=arg1+"."+arg2
  @msg=`ruby sample.rb #{@msg}`
  @output.should == @msg
end
