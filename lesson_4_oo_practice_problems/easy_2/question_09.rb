# Lesson 4: OO Practice Problems > Practice Problems: Easy 2

# If we have this class:

=begin
  
class Game
  def play
    "Start the game!"
  end
end

class Bingo < Game
  def rules_of_play
    #rules of play
  end
end

=end

# What would happen if we added a play method to the Bingo class, 
# keeping in mind that there is already a method of this name in the Game
# class that the Bingo class inherits from.

# The play method in the Bingo class would override the parent method.

class Game
  def play
    "Start the game!"
  end
end

class Bingo < Game
  def play
    "Start Bingo!"
  end

  def rules_of_play
    #rules of play
  end
end

bingo_game = Bingo.new
p bingo_game.play
