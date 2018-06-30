# Write a method called age that calls a private method to calculate the age of
# the vehicle. Make sure the private method is not available from outside of 
# the class. You'll need to use Ruby's built-in Time class to help.

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

  def age
    puts "The vehicle is #{age_of_vehicle} years old."
  end

  private

  def age_of_vehicle
    Time.now.year - self.year.to_i
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
car.age
truck.age