# Create a BankAccount class
class BankAccount
  # Initialize the class with two attributes
  def initialize(balance, interest_rate)
    @balance = balance
    @interest_rate = interest_rate
    @gain_interest = 0
  end

  # Reader (Getter)
  def balance
    @balance
  end

  def interest_rate
    @interest_rate
  end

  # Writer (Setter)
  def deposit(amount)
    @balance += amount
  end

  def withdraw(amount)
    @balance -= amount
  end
  #Reader (Getter)
  def gain_interest
    @gain_interest = @balance * @interest_rate / 100
  end

  def balance_plus_interest
    @balance += @gain_interest
  end

end
