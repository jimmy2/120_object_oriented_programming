# Create a module that you can mix in to ONE of your subclasses that describes
# a behavior unique to that subclass.

module Loadable

  def how_many_loads(kg)
    "I can carry #{kg} kg worth of freight."
  end

end

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
  include Loadable
  NO_OF_WHEELS = 8

  def output
    "My truck is a #{color}, #{year}, #{model}!"
  end

end

car = MyCar.new("2017", "blue", "Lambo")
truck = MyTruck.new("2015", "orange", "Nissan Titan")

p truck.how_many_loads(450)

# Their solution

module Towable
  def can_tow?(pounds)
    pounds < 2000 ? true : false
  end
end

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
  include Towable

  NUMBER_OF_DOORS = 2
end