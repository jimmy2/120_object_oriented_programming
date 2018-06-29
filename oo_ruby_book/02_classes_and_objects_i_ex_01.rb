# Create a class called MyCar. When you initialize a new instance or object of
# the class, allow the user to define some instance variables that tell us the
# year, color, and model of the car. Create an instance variable that is set 
# to 0 during instantiation of the object to track the current speed of the 
# car as well. Create instance methods that allow the car to speed up, brake,
# and shut the car off.

class MyCar
  def initialize(year, color, model)
    @year = year
    @color = color
    @model = model
    @speed = 0
  end

  def status
    puts "The #{@color} #{@year} #{@model} is going #{@speed}km per hour."
  end

  def speed_up
    @speed += 10
  end

  def brake
    @speed -= 5
  end

  def shut_off
    @speed = 0
  end

end

toyota = MyCar.new("1995", "yellow", "camry")
toyota.status
toyota.speed_up
toyota.status
toyota.brake
toyota.status
toyota.shut_off
toyota.status

# Their solution

class MyCar

  def initialize(year, model, color)
    @year = year
    @model = model
    @color = color
    @current_speed = 0
  end

  def speed_up(number)
    @current_speed += number
    puts "You push the gas and accelerate #{number} mph."
  end

  def brake(number)
    @current_speed -= number
    puts "You push the brake and decelerate #{number} mph."
  end

  def current_speed
    puts "You are now going #{@current_speed} mph."
  end

  def shut_down
    @current_speed = 0
    puts "Let's park this bad boy!"
  end
end

lumina = MyCar.new(1997, 'chevy lumina', 'white')
lumina.speed_up(20)
lumina.current_speed
lumina.speed_up(20)
lumina.current_speed
lumina.brake(20)
lumina.current_speed
lumina.brake(20)
lumina.current_speed
lumina.shut_down
lumina.current_speed
