# 120 Object Oriented Programming >
# Lesson 2: Object Oriented Programming >
# Lecture: Inheritance

# 2
# Let's create a few more methods for our Dog class.

=begin
  
class Dog
  def speak
    'bark!'
  end

  def swim
    'swimming!'
  end

  def run
    'running!'
  end

  def jump
    'jumping!'
  end

  def fetch
    'fetching!'
  end
end
  
=end

# Create a new class called Cat, which can do everything a dog can, except
# swim or fetch. Assume the methods do the exact same thing. Hint: don't
# just copy and paste all methods in Dog into Cat; try to come up with some
# class hierarchy.

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

fido = Dog.new
p fido.speak
p fido.fetch

ginger = Cat.new
p ginger.speak
p ginger.run

doggy = Bulldog.new
p doggy.speak
p doggy.swim

p Dog.ancestors
