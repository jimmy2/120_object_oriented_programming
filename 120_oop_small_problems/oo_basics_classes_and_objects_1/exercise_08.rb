# 120 - Object Oriented Programming > OO Basics: Classes and Objects 1
# > Writer

# Using the code from the previous exercise, add a setter method named #name.
# Then, rename kitty to 'Luna' and invoke #greet again.

class Cat

  attr_reader :name # option 1
  attr_writer :name

  def initialize(name)
    @name = name
  end

  # option 2
  # def name
  #   @name
  # end

  # def name=(name)
  #   @name = name
  # end

  def greet
    puts "Hello! My name is #{name}!"
  end

end

kitty = Cat.new('Sophie')
kitty.greet
kitty.name = "Luna"
kitty.greet