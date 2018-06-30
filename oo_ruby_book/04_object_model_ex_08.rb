# Given the following code...

=begin
bob = Person.new
bob.hi
=end

# And the corresponding error message...

=begin
NoMethodError: private method `hi' called for #<Person:0x007ff61dbb79f0>
from (irb):8
from /usr/local/rvm/rubies/ruby-2.0.0-rc2/bin/irb:16:in `<main>'
=end

# What is the problem and how would you go about fixing it?

class Person

  def hi
    puts "Hi"
  end

end

bob = Person.new
bob.hi

# .hi is a private instance method
# make it public instead

# Their solution

# The problem is that the method hi is a private method, therefore it is 
# unavailable to the object. I would fix this problem by moving the hi method
# above the private reserved word in the class.