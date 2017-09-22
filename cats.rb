class Cats

  def initialize(name, preferred_food, meal_time)
    @name = name
    @preferred_food = preferred_food
    @meal_time = meal_time.to_s
  end

  def eats_at
    if @meal_time < "13"
      @meal_time += " AM"
    else
      @meal_time += " PM"
    end
  end

  def meow
    "Hello meow name is " + @name + ", meow favourite food is " + @preferred_food + " and I usually have lunch at " + eats_at.to_s
  end
end
