require './bankAccount.rb'

john = BankAccount.new(100, 2.99)

puts john.balance
puts john.interest_rate
