# Lesson 4: OO Practice Problems > Practice Problems: Easy 1

# What is the default return value of to_s when invoked on an object? 
# Where could you go to find out if you want to be sure?

class Cube

  attr_reader :volume

  def initialize(volume)
    @volume = volume
  end
end

cube = Cube.new(4)
p cube.to_s
#=> "#<Cube:0x007fb01586a318>"

# From ruby-dog.org

# to_s → string
# Returns a string representing obj. 
# The default to_s prints the object's class and an encoding of the object id. 