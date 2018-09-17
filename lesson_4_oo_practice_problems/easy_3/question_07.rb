# Lesson 4: OO Practice Problems > Practice Problems: Easy 3

# What is used in this class but doesn't add any value?

class Light
  attr_accessor :brightness, :color

  def initialize(brightness, color)
    @brightness = brightness
    @color = color
  end

  def self.information
    return "I want to turn on the light with a brightness level of super high and a color of green"
  end

end

# The values of brightness and color #{@brightness}, #{@color}, so attr_accessor
# The return statement, the last line is explicitly returned in Ruby.
