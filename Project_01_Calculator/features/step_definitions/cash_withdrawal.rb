Given /I have \$(\d+) in my account/ do |amount|
  #pending
  #@amount=amount
end
When  /I request \$(\d+)/ do |dis_amount|
  #pending
  #@dis_amount=dis_amount
end
Then  /\$(\d+) should be dispensed/ do |withdrawal|
  #pending
  #@withdrawal=withdrawal
end

#Given I have deposited $10 in my Checking Account
Given /I have deposited \$(\d+) in my ([^"]*) Account/ do |amount,account_type|
  @account_type=account_type
  puts()
  if @account_type=="Checking"
    @chk_amount=amount
    puts("The amount '#{@chk_amount}'")
  else
    @save_amount=amount
    puts("The amount '#{@save_amount}'")
  end
  puts("The account type is '#{@account_type}'")
end
#And /I have deposited \$(\d+) in my ([^"]*) Account/ do |d_amount,account_type|
#  @account_type=account_type
#  @d_amount=d_amount
#  puts("The amount '#{@d_amount}'")
#  puts("The account type is '#{acc}'")
#end

When /I transfer \$(\d+) from my Savings Account into my Checking Account/ do |t_amount|
  @t_amount=t_amount
end
Then /the balance of the Checking Account should be \$(\d+)/ do |bal_chk_amount|
  @bal_chk_amount=@chk_amount+"+"+@t_amount
  @bal_chk_amount=`ruby calc.rb #{@bal_chk_amount}`
  raise('Command failed!') unless $?.success?
  @bal_chk_amount.should == bal_chk_amount
end
And /the balance of the Savings Account should be \$(\d+)/ do |bal_saving_amount|
  @bal_saving_amount=@save_amount+"-"+@t_amount
  @bal_saving_amount=`ruby calc.rb #{@bal_saving_amount}`
  raise('Command failed!') unless $?.success?
  @bal_saving_amount.should == bal_saving_amount
end
