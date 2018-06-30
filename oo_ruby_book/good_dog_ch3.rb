# good_dog_ch3.rb

class GoodDog
  attr_accessor :name, :height, :weight

  def initialize(n, h, w)
    @name = n
    @height = h
    @weight = w
  end

  def speak
    "#{name} says arf!"
  end

  def change_info(n, h, w)
    self.name = n
    self.height = h
    self.weight = w
  end

  def info
    "#{name} weighs #{weight} and is #{height} tall."
  end

  def self.what_am_i
    "I'm a GoodDog class"
  end

end

p GoodDog.what_am_i