# Move all of the methods from the MyCar class that also pertain to the MyTruck
# class into the Vehicle class. Make sure that all of your previous method 
# calls are working when you are finished.

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
    @current_speed = 0
    @@no_of_vehicles += 1
  end

  def self.print_no_of_vehicles
    "There are #{@@no_of_vehicles} vehicles"
  end

  def speed_up(number)
    @current_speed += number
    puts "You've sped up #{number} km/h"
  end

  def brake(number)
    @current_speed -= number
    puts "You've slowed down #{number} km/h"
  end

  def current_speed
    puts "You're now going #{@current_speed} km/h"
  end

  def shut_down
    puts "You've stopped."
  end

  def self.gas_mileage(litres, km)
    puts "#{km / litres} km per litre."
  end

  def spray_paint(color)
    self.color = color
    puts "Your new body color is #{color}."
  end

end

class MyCar < Vehicle
  NO_OF_WHEELS = 4

  def output
    puts "My car is a #{self.color}, #{self.year}, #{self.model}!"
  end

end

class MyTruck < Vehicle
  include Loadable
  NO_OF_WHEELS = 8

  def output
    puts "My truck is a #{self.color}, #{self.year}, #{self.model}!"
  end

end

car = MyCar.new("2017", "blue", "Lambo")
truck = MyTruck.new("2015", "orange", "Nissan Titan")
car.output
truck.output
car.speed_up(25)
car.current_speed
car.brake(10)
car.current_speed
car.shut_down
MyTruck.gas_mileage(20, 500)
car.spray_paint("orange")
car.output