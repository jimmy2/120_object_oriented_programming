# Lesson 4: OO Practice Problems > Practice Problems: Easy 1

# If we have the class below, what would you need to call to create
# a new instance of this class.

class Bag
  def initialize(color, material)
    @color = color
    @material = material
  end
end

# My Answer

bag = Bag.new("blue", "leather")