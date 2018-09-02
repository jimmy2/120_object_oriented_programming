# Lesson 4: OO Practice Problems > Practice Problems: Easy 1

# If we have a class such as the one below:

class Cat
  attr_accessor :type, :age

  def initialize(type)
    @type = type
    @age  = 0
  end

  def make_one_year_older
    self.age += 1
  end
end

# You can see in the make_one_year_older method we have used self. 
# What does self refer to here?

# self refers to the instance of the class.
# e.g. kitty = Cat.new("siamese")
# self = the kitty instance

# Their answer

# The use of self here is referencing the instance (object) that called
# the method - the calling object.
