# Lesson 4: OO Practice Problems > Practice Problems: Easy 2

# If we have this class:

class Game
  def play
    "Start the game!"
  end
end

# And another class:

class Bingo < Game
  def rules_of_play
    #rules of play
  end
end

# What can we add to the Bingo class to allow it to inherit the play method
# from the Game class?

# < Game

bingo_game = Bingo.new
p bingo_game.play
