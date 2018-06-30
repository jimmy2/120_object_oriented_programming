# Create a superclass called Vehicle for your MyCar class to inherit from and
# move the behavior that isn't specific to the MyCar class to the superclass.
# Create a constant in your MyCar class that stores information about the
# vehicle that makes it different from other types of Vehicles.

# Then create a new class called MyTruck that inherits from your superclass 
# that also has a constant defined that separates it from the MyCar class in
# some way.

class Vehicle

  attr_accessor :year, :color, :model

  def initialize(year, color, model)
    @year = year
    @color = color
    @model = model
  end

end

class MyCar < Vehicle
  NO_OF_WHEELS = 4

  def output
    "My car is a #{color}, #{year}, #{model}!"
  end

end

class MyTruck < Vehicle
  NO_OF_WHEELS = 8

  def output
    "My truck is a #{color}, #{year}, #{model}!"
  end

end

car = MyCar.new("2017", "blue", "Lambo")
truck = MyTruck.new("2015", "orange", "Nissan Titan")
p car.output
p truck.output

# Their solution

class Vehicle
  def self.gas_mileage(gallons, miles)
    puts "#{miles / gallons} miles per gallon of gas"
  end
end

class MyCar < Vehicle
  NUMBER_OF_DOORS = 4
  #code omitted for brevity...
end

class MyTruck < Vehicle
  NUMBER_OF_DOORS = 2
end
