# Lesson 4: OO Practice Problems > Practice Problems: Easy 3

# If we have this code:

class Greeting
  def greet(message)
    puts message
  end
end

class Hello < Greeting
  def hi
    greet("Hello")
  end
end

class Goodbye < Greeting
  def bye
    greet("Goodbye")
  end
end

# What happens in each of the following cases:

# case 1:

hello = Hello.new
hello.hi
# => "Hello"

# case 2:

hello = Hello.new
hello.bye
# undefined method 'bye' for #<Hello:0x00> object

# case 3:

hello = Hello.new
hello.greet
# 'greet': wrong number of arguments (given 0, expected 1)

# case 4:

hello = Hello.new
hello.greet("Goodbye")
# => "Goodbye"

# case 5:

Hello.hi
# undefined method `hi' for Hello:Class
