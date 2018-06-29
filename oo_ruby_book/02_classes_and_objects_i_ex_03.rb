# You want to create a nice interface that allows you to accurately describe
# the action you want your program to perform. Create a method called 
# spray_paint that can be called on an object and will modify the color of 
# the car.

class MyCar

  attr_accessor :color, :model, :speed
  attr_reader :year

  def initialize(year, color, model)
    @year = year
    @color = color
    @model = model
    @speed = 0
  end

  def status
    puts "The #{color} #{year} #{model} is going #{speed}km per hour."
  end

  def spray_paint(color)
    self.color = color
    puts "Your new color is #{color}."
  end

end

toyota = MyCar.new("1995", "yellow", "camry")
toyota.spray_paint("red")

# Their solution

class MyCar
  attr_accessor :color
  attr_reader :year

  # ... rest of class left out for brevity

  def spray_paint(color)
    self.color = color
    puts "Your new #{color} paint job looks great!"
  end
end

lumina.spray_paint('red')   #=> "Your new red paint job looks great!"