# Lesson 4: OO Practice Problems > Practice Problems: Easy 2

# We have an Oracle class and a RoadTrip class that inherits from the
# Oracle class.

class Oracle
  def predict_the_future
    "You will " + choices.sample
  end

  def choices
    ["eat a nice lunch", "take a nap soon", "stay at work late"]
  end
end

class RoadTrip < Oracle
  def choices
    ["visit Vegas", "fly to Fiji", "romp in Rome"]
  end
end

# What is the result of the following:

trip = RoadTrip.new
p trip.predict_the_future

# A string will be returned with one of the random values:
# "You will visit Vegas" or "You will fly to Fiji" or
# "You will romp in Rome"

# The choices method in the RoadTrip class will override the choices method in
# the Oracle class.
