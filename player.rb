class Player
  def initialize(gold_coins, health_points, lives)
    @gold_coins = 0
    @health_points = 10
    @lives = 5
  end

  def level_up
    @lives += 1
  end

  def collect_treasure
    @gold_coins += 1
      if @gold_coins %10 == 0
        level_up
      end
    end

    def do_battle(damage)
      @health_points -= damage
      if @lives < 1
        restart
      elsif @health_points < 1
        @health_points = 10
        @lives -= 1
      end
    end

    def restart
      @gold_coins = 0
      @health_points = 10
      @lives = 5
    end

    def player_status
    "# of Coins: " + @gold_coins.to_s + "\n" +
    "Health points: " +  @health_points.to_s + "\n" +
    "Number of lives: " + @lives.to_s
    end

    def player_info(gold_coins, health_points, lives)
      if lives == 1 && health_points == 1 && gold_coins == 1
        "# of Coins: " + @gold_coins.to_s + "\n" +
        "Health points: " +  @health_points.to_s + "\n" +
        "Number of lives: " + @lives.to_s
      elsif lives == 1
        "Number of lives: " + @lives.to_s
      elsif health_points == 1
        "Health points: " +  @health_points.to_s
      elsif gold_coins == 1
        "# of Coins: " + @gold_coins.to_s


      end
    end
end
