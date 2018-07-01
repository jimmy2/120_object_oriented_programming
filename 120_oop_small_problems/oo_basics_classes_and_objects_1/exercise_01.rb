# 120 - Object Oriented Programming > OO Basics: Classes and Objects 1
# > Find the Class

# Update the following code so that, instead of printing the values, each
# statement prints the name of the class to which it belongs.

=begin
puts "Hello"
puts 5
puts [1, 2, 3]
=end

# Expected output:

=begin
String
Integer               # "Fixnum" if you're using Ruby version older than 2.4.0
Array
=end

puts "Hello".class
puts 5.class
puts [1, 2, 3].class