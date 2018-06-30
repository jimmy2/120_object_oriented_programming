# When running the following code...

=begin
class Person
  attr_reader :name
  def initialize(name)
    @name = name
  end
end

bob = Person.new("Steve")
bob.name = "Bob"
=end

# We get the following error...

=begin
test.rb:9:in `<main>': undefined method `name=' for
  #<Person:0x007fef41838a28 @name="Steve"> (NoMethodError)
=end

# Why do we get this error and how to we fix it?

class Person
  attr_accessor :name # Change this to accessor, so the setter method can be used
  def initialize(name)
    @name = name
  end
end

bob = Person.new("Steve")
bob.name = "Bob"