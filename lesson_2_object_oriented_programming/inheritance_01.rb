# 120 Object Oriented Programming >
# Lesson 2: Object Oriented Programming >
# Lecture: Inheritance

# 1
# Suppose we're building a software system for a pet hotel business, so our
# classes deal with pets.

# Given this class:

=begin
class Dog
  def speak
    'bark!'
  end

  def swim
    'swimming!'
  end
end

teddy = Dog.new
puts teddy.speak           # => "bark!"
puts teddy.swim           # => "swimming!"
=end

# One problem is that we need to keep track of different breeds of dogs, since
# they have slightly different behaviors. For example, bulldogs can't swim,
# but all other dogs can.

# Create a sub-class from Dog called Bulldog overriding the swim method to
# return "can't swim!"

class Dog
  def speak
    'bark!'
  end

  def swim
    'swimming!'
  end
end

class Bulldog < Dog

  def swim
    "can't swim!"
  end

end

teddy = Dog.new
puts teddy.speak           # => "bark!"
puts teddy.swim           # => "swimming!"

doggy = Bulldog.new
puts doggy.speak
puts doggy.swim

