class Paperboy
  def initialize(name, experience)
    @name = name
    @experience = experience
    @earnings = earnings
    @quota = 50
  end

  def earnings
    @earnings
  end

  def calculate_quota
    @quota += (@experience/2).abs
  end

  def deliver(start_address, end_address)
    @experience = (end_address - start_address)
      if (@experience < @quota) && @experience < 0
        puts" entering here"
        puts try_again_message
      elsif @experience > @quota
        @earnings = ((@quota * 0.25).to_f + ((@experience - @quota) * 0.50).to_f)
        @quota = calculate_quota
        puts report
      else
        @earnings = (@experience * 0.25).to_f
        @quota = calculate_quota
        puts report
      end
  end
  def try_again_message
    "Sorry #{@name} you went backwards and didn't delivered any papers.\nPlease try again."
  end
  def report
    "***\nHi. I'm #{@name}, I've delivered #{@experience} papers today, \nand I've earned $ #{@earnings} so far.\nI'll need to deliver #{@quota} papers tomorrow.\n***"
  end

end

tommy = Paperboy.new("Tommy", 0)
tommy.deliver(100, 213)

maria = Paperboy.new("Maria", 0)
maria.deliver(201, 190)
