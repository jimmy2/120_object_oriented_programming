# What is a module? 

# Code that can be mixed in and shared amongst objects.

# What is its purpose?

# Reuseable
# Grouping common methods

# How do we use them with our classes? 

# Need the 'include' method invocation

# Create a module for the class you created in exercise 1 and include it properly.

module Sound
  def output_sound(sound)
    puts "#{sound}"
  end
end

class Car
  include Sound
end

toyota = Car.new
toyota.output_sound("Honk honk!")

# Their solution

module Study
end

class MyClass
  include Study
end

my_obj = MyClass.new

