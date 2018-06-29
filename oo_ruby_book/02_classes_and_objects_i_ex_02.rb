# Add an accessor method to your MyCar class to change and view the color of 
# your car. Then add an accessor method that allows you to view, but not 
# modify, the year of your car.

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

  def change_color(color)
    self.color = color
  end

end

toyota = MyCar.new("1995", "yellow", "camry")
toyota.status
toyota.change_color("red")
toyota.status
p toyota.year

# Their solution

class MyCar
  attr_accessor :color
  attr_reader :year
  # ... rest of class left out for brevity
end

lumina.color = 'black'
puts lumina.color
puts lumina.year