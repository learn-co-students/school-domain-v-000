# code here!
class School
  attr_reader :name, :roster
  #attr_accessor :roster
  
  def initialize(name)
    @name=name
    @roster = {}
  end
  
  def add_student(new_student, grade)
    @roster[grade] ||= [] # a||= b is the same as a || a = b
    #roster[grade] || roster[grade] = []
    @roster[grade] << new_student
  end
  
  def grade(student_grade)
    @roster[student_grade]
  end
  
  def sort
    sorted_students = {}
    #I can use @roster OR roster and it will work...
    @roster.each do |grade, students|
      #order of the two variables matter!
      sorted_students[grade] = students.sort
    end
    sorted_students #return this hash
  end
end