# 120 - Object Oriented Programming > OO Basics: Accessor Methods 
# > Reading and Writing

# Add the appropriate accessor methods to the following code.

=begin
class Person
end

person1 = Person.new
person1.name = 'Jessica'
puts person1.name

# Expected output:

#Jessica
=end

class Person
  attr_writer :name
  attr_reader :name
  # or attr_accessor :name
end

person1 = Person.new
person1.name = 'Jessica'
puts person1.name