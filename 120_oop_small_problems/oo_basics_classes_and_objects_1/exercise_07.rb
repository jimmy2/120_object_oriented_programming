# 120 - Object Oriented Programming > OO Basics: Classes and Objects 1
# > Reader

# Using the code from the previous exercise, add a getter method named #name
# and invoke it in place of @name in #greet.

class Cat

  attr_reader :name # option 1

  def initialize(name)
    @name = name
  end

  # option 2
  # def name
    # @name
  # end

  def greet
    puts "Hello! My name is #{name}!"
  end

end

kitty = Cat.new('Sophie')
kitty.greet
p kitty.name