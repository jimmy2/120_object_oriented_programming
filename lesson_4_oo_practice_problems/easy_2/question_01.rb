# Lesson 4: OO Practice Problems > Practice Problems: Easy 2

# You are given the following code:

class Oracle
  def predict_the_future
    "You will " + choices.sample
  end

  def choices
    ["eat a nice lunch", "take a nap soon", "stay at work late"]
  end
end

# What is the result of calling

oracle = Oracle.new
oracle.predict_the_future

# A string will be returned with one of the random values:
# "You will eat a nice lunch" or "You will take a nap soon" or
# "You will stay at work late"