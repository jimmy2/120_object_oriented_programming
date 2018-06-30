# Add a class variable to your superclass that can keep track of the number
# of objects created that inherit from the superclass. Create a method to 
# print out the value of this class variable as well.

class Vehicle

  @@no_of_vehicles = 0

  attr_accessor :year, :color, :model

  def initialize(year, color, model)
    @year = year
    @color = color
    @model = model
    @@no_of_vehicles += 1
  end

  def self.print_no_of_vehicles
    "There are #{@@no_of_vehicles} vehicles"
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

p Vehicle.print_no_of_vehicles

# Their solution

class Vehicle
  @@number_of_vehicles = 0

  def self.number_of_vehicles
    puts "This program has created #{@@number_of_vehicles} vehicles"
  end

  def initialize
    @@number_of_vehicles += 1
  end

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