# Print to the screen your method lookup for the classes that you have created.

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

p "--- MyCar Ancestors ---"
p MyCar.ancestors
p "--- MyTruck Ancestors ---"
p MyTruck.ancestors
p "--- Vehicle Ancestors ---"
p Vehicle.ancestors