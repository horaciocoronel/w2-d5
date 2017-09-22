require './bankAccount.rb'

john = BankAccount.new(100, 2.99)

puts "John initial balance = $#{john.balance}"
puts "John's account interest rate =  #{john.interest_rate}%"
puts "John deposits $200"
john.deposit(200)
puts "New balance $#{john.balance}"
puts "John decides to withdraw $50"
john.withdraw(50)
puts "New balance $#{john.balance}"
puts "John earned interest to date = #{john.gain_interest}"
puts "Balance + earned interest =  $#{john.balance_plus_interest}"
