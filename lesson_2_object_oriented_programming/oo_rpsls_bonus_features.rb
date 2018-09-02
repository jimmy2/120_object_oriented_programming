# Object Oriented Rock, Paper, Scissors, Lizard, Spock game

# Scissors cuts paper
# Paper covers rock
# Rock crushes lizard
# Lizard poisons Spock
# Spock smashes scissors
# Scissors decapitates lizard
# Lizard eats paper
# Paper disproves Spock
# Spock vaporizes Rock
# Rock crushes scissors

MAX_WINS = 10

def prompt(string)
  puts ">> #{string}"
end

class Move
  GAME_HASH = { rock: ["scissors", "lizard"],
                scissors: ["paper", "lizard"],
                paper: ["rock", "spock"],
                lizard: ["spock", "paper"],
                spock: ["scissors", "rock"] }

  VALID_CHOICES = { rock: "r",
                    scissors: "s",
                    paper: "p",
                    lizard: "l",
                    spock: "sp" }

  def initialize(value)
    @value = value
  end

  def beats(other_move)
    value = @value.to_sym
    other_move = other_move.to_s
    GAME_HASH[value].include?(other_move)
  end

  def to_s
    @value
  end
end

class Player
  attr_accessor :move, :name, :score

  def initialize
    set_name
    @score = 0
  end

  def max_wins?
    score == MAX_WINS
  end
end

class Human < Player
  def set_name
    n = ""
    loop do
      prompt "Please enter your name:"
      n = gets.chomp.strip
      break unless n.empty?
      puts "Sorry, you must enter a value."
    end
    self.name = n
  end

  def choose
    choice = nil
    system("cls") || system("clear")
    loop do
      prompt "Please choose rock, paper, scissors, lizard, or spock:"
      puts "Shortcuts: r, p, s, l, sp"
      choice = gets.chomp.downcase
      break if Move::GAME_HASH.include?(choice.to_sym)
      # shorthand option
      if Move::VALID_CHOICES.values.include?(choice)
        choice = Move::VALID_CHOICES.key(choice).to_s
        break
      end
      puts "Sorry, invalid choice. Please choose one of the options..."
    end
    self.move = Move.new(choice)
  end
end

class Computer < Player
  def set_name
    self.name = ['R2D2', 'Hal', 'Chappie', 'Sonny', 'Number 5'].sample
  end

  def choose
    self.move = Move.new(Move::GAME_HASH.keys.sample.to_s)
  end
end

class RPSGame
  attr_accessor :human, :computer

  def initialize
    display_welcome_message
    @human = Human.new
    @computer = Computer.new
  end

  def display_welcome_message
    greeting = "Welcome to Rock, Paper, Scissors, Lizard, Spock!"
    puts greeting
    puts "First to #{MAX_WINS} is the winner!".center(greeting.length, "-")
  end

  def display_goodbye_message
    puts "Thanks for playing Rock, Paper, Scissors, Lizard, Spock! Goodbye!"
  end

  def display_moves
    puts "#{human.name} chose #{human.move}"
    puts "#{computer.name} chose #{computer.move}"
  end

  def display_winner
    if human.move.beats(computer.move)
      puts "#{human.move} beats #{computer.move}. #{human.name} won!"
      human.score += 1
    elsif computer.move.beats(human.move)
      puts "#{computer.move} beats #{human.move}. #{computer.name} won!"
      computer.score += 1
    else
      puts "It's a tie!"
    end
  end

  def display_game_scores
    if winner?
      puts "Final Score:"
    else
      puts "Game Score:"
    end
    puts "#{human.name}: #{human.score}, #{computer.name}: #{computer.score}."
  end

  def winner?
    human.max_wins? || computer.max_wins?
  end

  def play_again?
    answer = ""
    loop do
      prompt "Would you like to play again? (y/n)"
      answer = gets.chomp
      break if ['y', 'n'].include?(answer.downcase)
      puts "Sorry, must be y or n..."
    end
    answer == 'y' ? true : false
  end

  def play
    loop do
      human.choose
      computer.choose
      display_moves
      display_winner
      display_game_scores
      break if winner?
      break unless play_again?
    end
    display_goodbye_message
  end
end

RPSGame.new.play
