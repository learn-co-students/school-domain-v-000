# code here!
class School
  attr_accessor :name, :roster

  def initialize(name)
    @name = name
    @roster = {} #school should have a roster (as an empty hash) upon initialization.
  end

  def add_student(student_name, grade) #add_student method, argument of student's name and grade
    roster[grade] ||= [] #create the new key as an array for the empty hash in @roster.
    roster[grade] << student_name #push that new value into the array
  end

  def grade(student_grade) #method grade takes argument of a grade and returns all of the students in that grade.
    roster[student_grade]
  end

  def sort  #sorted list of all students where the strings in the student arrays are sorted alphabetically.
    sorted = {}
    roster.each do |grade, students|
      sorted[grade] = students.sort
    end
    sorted
  end
end
