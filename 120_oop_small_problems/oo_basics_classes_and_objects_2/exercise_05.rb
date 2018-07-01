# 120 - Object Oriented Programming > OO Basics: Classes and Objects 2
# > Counting Cats

# Using the following code, create a class named Cat that tracks the number of
# times a new Cat object is instantiated. The total number of Cat instances
# should be printed when #total is invoked.

=begin
kitty1 = Cat.new
kitty2 = Cat.new

Cat.total

# Expected output:
# 2
=end

class Cat
  @@no_of_cats = 0

  def initialize
    @@no_of_cats += 1
  end

  def self.total
    puts "#{@@no_of_cats}"
  end
  
end

kitty1 = Cat.new
kitty2 = Cat.new

Cat.total