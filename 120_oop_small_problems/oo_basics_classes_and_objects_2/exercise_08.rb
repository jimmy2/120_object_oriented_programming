# 120 - Object Oriented Programming > OO Basics: Classes and Objects 2
# > Public Secret

# Using the following code, create a class named Person with an instance
# variable named @secret. Use a setter method to add a value to @secret, then
# use a getter method to print @secret.

=begin
  
person1 = Person.new
person1.secret = 'Shh.. this is a secret!'
puts person1.secret

# Expected output:

# Shh.. this is a secret!
  
=end

class Person

  #option 1
  attr_accessor :secret  

  # option 2
  # def secret
  #   @secret
  # end

  # def secret=(value)
  #   @secret = value
  # end

end

person1 = Person.new
person1.secret = 'Shh.. this is a secret!'
puts person1.secret
