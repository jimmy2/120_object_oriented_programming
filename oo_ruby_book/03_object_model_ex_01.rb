# Add a class method to your MyCar class that calculates the gas mileage
# of any car.

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

end

toyota = MyCar.new("1995", "yellow", "camry")
MyCar.gas_mileage

# Their solution

class MyCar

  # code omitted for brevity...

  def self.gas_mileage(gallons, miles)
    puts "#{miles / gallons} miles per gallon of gas"
  end
end

MyCar.gas_mileage(13, 351)  # => "27 miles per gallon of gas"