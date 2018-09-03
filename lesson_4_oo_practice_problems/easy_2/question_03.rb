# Lesson 4: OO Practice Problems > Practice Problems: Easy 2

# How do you find where Ruby will look for a method when that method
# is called? How can you find an object's ancestors?

module Taste
  def flavor(flavor)
    puts "#{flavor}"
  end
end

class Orange
  include Taste
end

class HotSauce
  include Taste
end

# What is the lookup chain for Orange and HotSauce?

# The class first, and then included models from last included, then inherited
# classes and their included modules.

# Use .ancestors to look up the order.

# Orange Lookup chain (Orange.ancestors)
# Orange
# Taste
# Object
# Kernel
# BasicObject

# HotSauce Lookup chain (HotSauce.ancestors)
# HotSauce
# Taste
# Object
# Kernel
# BasicObject
