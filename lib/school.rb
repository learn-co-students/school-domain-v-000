# code here!
class School

  attr_accessor :name, :roster

  def initialize(name)
    @name = name
    @roster = {}
  end

  def add_student(student_name, grade)
    roster[grade] ||= []
    roster[grade] << student_name
    #It is an assignment operator which means: or assign this value to a variable.
    #So if you did something like x ||= y this means x || x = y so if x is nil or false set x to be the value of y.
    #https://medium.com/@jaredrayjohnson1/ruby-operators-double-pipe-equals-bfcbe21a7177
  end

  def grade(student_grade)
    roster[student_grade]
  end

  def sort
    sorted = {}
    roster.each do |grade, students|
        sorted[grade] = students.sort
      end
      sorted
  end
end
