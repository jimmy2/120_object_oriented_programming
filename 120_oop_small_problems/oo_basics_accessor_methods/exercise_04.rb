# 120 - Object Oriented Programming > OO Basics: Accessor Methods 
# > Comparing Names

# Using the following code, add the appropriate accessor methods. Keep in mind
# that the last_name getter shouldn't be visible outside the class, while the
# first_name getter should be visible outside the class.

=begin
class Person
  def first_equals_last?
    first_name == last_name
  end
end

person1 = Person.new
person1.first_name = 'Dave'
person1.last_name = 'Smith'
puts person1.first_equals_last?

# Expected output:

# false
=end

class Person
  attr_accessor :first_name
  attr_writer :last_name

  def first_equals_last?
    first_name == last_name
  end

  protected

  def last_name
    @last_name
  end

  # Their answer

  # private
  # attr_reader :last_name

end

person1 = Person.new
person1.first_name = 'Dave'
person1.last_name = 'Smith'
puts person1.first_equals_last?
