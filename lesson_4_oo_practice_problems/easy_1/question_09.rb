# Lesson 4: OO Practice Problems > Practice Problems: Easy 1

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

# In the name of the cats_count method we have used self. What does self refer
# to in this context?

# self.cats_count refers to a class method
# self refers to the Cat class
# Cats.cats_count
