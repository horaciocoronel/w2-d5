# Create a BankAccount class
class BankAccount
  # Initialize the class with two attributes
  def initialize(balance, interest_rate)
    @balance = balance
    @interest_rate = interest_rate
  end

  # Reader (Getter)
  def balance
    @balance
  end

  def interest_rate
    @interest_rate
  end

end
