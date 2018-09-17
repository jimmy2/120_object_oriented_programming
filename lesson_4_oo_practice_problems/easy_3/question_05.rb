# Lesson 4: OO Practice Problems > Practice Problems: Easy 3

# If I have the following class:

class Television
  def self.manufacturer
    # method logic
  end

  def model
    # method logic
  end
end

# What would happen if I called the methods like shown below?

tv = Television.new
tv.manufacturer
# exception - undefined method manufacturer for #<Television:XXXX>
tv.model
# run the instance method

Television.manufacturer
# run the class method
Television.model
# exception - undefined method manufacturer for Television::Class
