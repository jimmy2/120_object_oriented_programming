# 120 - Object Oriented Programming > OO Basics: Classes and Objects 2
# > Hello, Chloe!

# Using the following code, add an instance method named #rename that renames
# kitty when invoked.

=begin
  
class Cat
  attr_accessor :name

  def initialize(name)
    @name = name
  end
end

kitty = Cat.new('Sophie')
kitty.name
kitty.rename('Chloe')
kitty.name

# Expected output:

# Sophie
# Chloe
  
=end

class Cat
  attr_accessor :name

  def initialize(name)
    @name = name
  end

  def rename(name)
    self.name = name
  end

end

kitty = Cat.new('Sophie')
p kitty.name
kitty.rename('Chloe')
p kitty.name