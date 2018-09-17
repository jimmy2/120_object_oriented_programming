# Lesson 4: OO Practice Problems > Practice Problems: Easy 3

# When objects are created they are a separate realization of a
# particular class.

# Given the class below, how do we create two different instances
# of this class, both with separate names and ages?

class AngryCat
  def initialize(age, name)
    @age  = age
    @name = name
  end

  def age
    puts @age
  end

  def name
    puts @name
  end

  def hiss
    puts "Hisssss!!!"
  end
end

# Answer

kitty1 = AngryCat.new(8, "Whiskers")
kitty2 = AngryCat.new(2, "Bubbles")

kitty1.name
kitty1.age
kitty1.hiss

kitty2.name
kitty2.age
kitty2.hiss
