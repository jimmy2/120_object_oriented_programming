# #### Assignment: OO Rock Paper Scissors ####

### GAME FLOW
# the user makes a choice
# the computer makes a choice
# the winner is displayed

### APPROACH TO OOP

# 1.  Write a textual description of the problem or exercise.
# 2.  Extract the major nouns and verbs from the description.
# 3.  Organize and associate the verbs with the nouns.
# 4.  The nouns are the classes and the verbs are the behaviors or methods.


## 1. Textual description

# Rock, Paper, Scissors is a two-player game where each player chooses
# one of three possible moves: rock, paper, or scissors. The chosen moves
# will then be compared to see who wins, according to the following rules:

# - rock beats scissors
# - scissors beats paper
# - paper beats rock

# If the players chose the same move, then it's a tie.


## 2. Extract the major nouns and verbs

# Nouns: player, move, rule
# Verbs: choose, compare

## 3. Organize and associate the verbs with the nouns.

# Player
# - choose
# Move
# Rule

# - compare

## 4.  Classes - Nouns, Behaviors or methods - Verbs

class Player
  def initialize
    # maybe a "name"? what about a "move"?
  end

  def choose

  end
end

class Move
  def initialize
    # seems like we need something to keep track
    # of the choice... a move object can be "paper", "rock" or "scissors"
  end
end

class Rule
  def initialize
    # not sure what the "state" of a rule object should be
  end
end

# not sure where "compare" goes yet
def compare(move1, move2)

end

class RPSGame
  attr_accessor :human, :computer

  def initialize
    @human = Player.new
    @computer = Player.new
  end

  def play
    display_welcome_message
    human.choose
    computer.choose
    display_winner
    display_goodbye_message
  end
end


### Orchestration Engine

RPSGame.new.play