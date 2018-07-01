# 120 Object Oriented Programming >
# Lesson 2: Object Oriented Programming >
# Lecture: Inheritance

# 4
# What is the method lookup path and how is it important?

# The method lookup path refers to the precedence of methods that will be invoked.
# For example Dog.ancestors gives us [Dog, Animal, Object, Kernel, BasicObject]
# Ruby will first look for the method in the Dog class, then Animal, and so on.

# Their solution

# The method lookup path is the order in which Ruby will traverse the class 
# hierarchy to look for methods to invoke. For example, say you have a Bulldog
# object called bud and you call: bud.swim. Ruby will first look for a method
# called swim in the Bulldog class, then traverse up the chain of super-classes;
# it will invoke the first method called swim and stop its traversal.