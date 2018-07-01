# 120 Object Oriented Programming >
# Lesson 2: Object Oriented Programming >
# Lecture: Classes and Objects

# 2
# Modify the class definition from above to facilitate the following methods.
# Note that there is no name= setter method now.

# Hint: let first_name and last_name be "states" and create an instance method
# called name that uses those states.

=begin
  
bob = Person.new('Robert')
bob.name                  # => 'Robert'
bob.first_name            # => 'Robert'
bob.last_name             # => ''
bob.last_name = 'Smith'
bob.name                  # => 'Robert Smith'
  
=end

class Person

  def initialize(first_name, last_name="")
    @first_name = first_name
    @last_name = last_name
  end

  def first_name
    @first_name
  end

  def first_name=(first_name)
    @first_name = first_name
  end

  def last_name
    @last_name
  end

  def last_name=(last_name)
    @last_name = last_name
  end

  def name
    if @last_name
      "#{@first_name} #{@last_name}"
    else
      "#{@first_name}"
    end
  end

end

bob = Person.new('Robert')
p bob.name                  # => 'Robert'
p bob.first_name            # => 'Robert'
p bob.last_name             # => ''
bob.last_name = 'Smith'
p bob.name                  # => 'Robert Smith' 

# Their solution

class Person
  attr_accessor :first_name, :last_name

  def initialize(full_name)
    parts = full_name.split
    @first_name = parts.first
    @last_name = parts.size > 1 ? parts.last : ''
  end

  def name
    "#{first_name} #{last_name}".strip
  end
end