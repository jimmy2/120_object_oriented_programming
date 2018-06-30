# Create a class 'Student' with attributes name and grade. Do NOT make the
# grade getter public, so joe.grade will raise an error. Create a 
# better_grade_than? method, that you can call like so...

# puts "Well done!" if joe.better_grade_than?(bob)

class Student

  def initialize(name, grade)
    @name = name
    @grade = grade
  end

  def better_grade_than?(other_student)
    self.grade > other_student.grade
  end

  protected

  def grade
    @grade
  end

end

joe = Student.new("Joe", 100)
bob = Student.new("Bob", 95)

puts "Well done!" if joe.better_grade_than?(bob)