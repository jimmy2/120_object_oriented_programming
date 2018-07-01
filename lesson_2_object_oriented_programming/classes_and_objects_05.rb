# 120 Object Oriented Programming >
# Lesson 2: Object Oriented Programming >
# Lecture: Classes and Objects

# 5
# Continuing with our Person class definition, what does the below print out?

=begin
  
bob = Person.new("Robert Smith")
puts "The person's name is: #{bob}"
  
=end

# Let's add a to_s method to the class:

# Now, what does the below output?

class Person
  attr_accessor :first_name, :last_name

  def initialize(full_name)
    parse_full_name(full_name)
  end

  def name
    "#{first_name} #{last_name}".strip
  end

  def name=(full_name)
    parse_full_name(full_name)
  end

  def to_s
    name
  end

  private

  def parse_full_name(full_name)
    parts = full_name.split
    self.first_name = parts.first
    self.last_name = parts.size > 1 ? parts.last : ''
  end
end

bob = Person.new("Robert Smith")
puts "The person's name is: #{bob}"
# before to_s
# => The person's name is: #<Person:0x007f8e188787e8>
# after to_s
# => The person's name is: Robert Smith
