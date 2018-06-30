# Override the to_s method to create a user friendly print out of your object.

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

  def self.gas_mileage
    puts "60 kms per litre"
  end

  def self.to_s
    "The object is a MyCar"
  end

end

toyota = MyCar.new("1995", "yellow", "camry")

puts MyCar

# Their solution

class MyCar
  # code omitted for brevity...

  def to_s
    "My car is a #{color}, #{year}, #{@model}!"
  end
end

my_car = MyCar.new("2010", "Ford Focus", "silver")
puts my_car  # => My car is a silver, 2010, Ford Focus.

## Note the "puts" calls "to_s" automatically.