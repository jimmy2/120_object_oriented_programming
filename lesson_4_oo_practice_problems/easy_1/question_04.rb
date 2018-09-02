# Lesson 4: OO Practice Problems > Practice Problems: Easy 1

# If we have a class AngryCat how do we create a new instance of this class?

# The AngryCat class might look something like this:

=begin
  
class AngryCat
  def hiss
    puts "Hisssss!!!"
  end
end
  
=end

class AngryCat

  def hiss
    puts "Hisssss!!!"
  end
end

kitty = AngryCat.new
kitty.hiss