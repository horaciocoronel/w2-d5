require './bankAccount.rb'

john = BankAccount.new(100, 2.99)

puts "John initial balance = $#{john.balance}"
puts "John's account interest rate =  #{john.interest_rate}%"
puts "John deposits $200"
john.deposit(200)
puts "New balance $#{john.balance}"
