# 120 Object Oriented Programming >
# Lesson 2: Object Oriented Programming >
# Lecture: Collaborator Objects

class Person
  attr_accessor :name, :pets

  def initialize(name)
    @name = name
    @pets = []
  end
end

class Animal

  def run
    'running!'
  end

  def jump
    'jumping!'
  end

end

class Dog < Animal
  def speak
    'bark!'
  end

  def swim
    'swimming!'
  end

  def fetch
    'fetching!'
  end
end

class Bulldog < Dog

  def swim
    "can't swim!"
  end

end

class Cat < Animal

  def speak
    'meow!'
  end

end

bob = Person.new("Robert")

kitty = Cat.new
bud = Bulldog.new

bob.pets << kitty
bob.pets << bud

p bob.pets

bob.pets.each do |pet|
  p pet.jump
end  
