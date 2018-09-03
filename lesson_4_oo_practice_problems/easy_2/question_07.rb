# Lesson 4: OO Practice Problems > Practice Problems: Easy 2

# If we have a class such as the one below:

class Cat
  @@cats_count = 0

  def initialize(type)
    @type = type
    @age  = 0
    @@cats_count += 1
  end

  def self.cats_count
    @@cats_count
  end
end

# Explain what the @@cats_count variable does and how it works. 
# What code would you need to write to test your theory?

# @@cats_count is a class variable; a counter to count all the Cat instances.

Cat.new("siamese")
p Cat.cats_count