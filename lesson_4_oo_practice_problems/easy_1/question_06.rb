# Lesson 4: OO Practice Problems > Practice Problems: Easy 1

# What could we add to the class below to access the instance variable @volume?

=begin
  
class Cube
  def initialize(volume)
    @volume = volume
  end
end
  
=end

class Cube

  attr_reader :volume

  def initialize(volume)
    @volume = volume
  end
end

cube = Cube.new(4)
p cube.volume

# Their answer

# Technically we don't need to add anything at all. We are able to access
# instance variables directly from the object by calling 
# instance_variable_get on the instance.

# >> big_cube = Cube.new(5000)
# >> big_cube.instance_variable_get("@volume")
# => 5000

# Instead we can add a method to this object that returns the instance variable.

=begin
  
class Cube
  def initialize(volume)
    @volume = volume
  end

  def get_volume
    @volume
  end
end

>> big_cube.get_volume
=> 5000
  
=end
