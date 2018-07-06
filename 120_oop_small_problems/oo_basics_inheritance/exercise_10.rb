# 120 - Object Oriented Programming > OO Basics: Inheritance
# > Transportation

# Create a module named Transportation that contains three classes: Vehicle,
# Truck, and Car. Truck and Car should both inherit from Vehicle.

module Transportation

  class Vehicle
  end

  class Truck < Vehicle
  end

  class Car < Vehicle
  end

end

# Namespacing example
# Transportation::Truck.new