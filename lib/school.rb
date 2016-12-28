# code here!
class School
  attr_reader :name
  attr_accessor :roster
def initialize(name)
  @name = name
  @roster = {}
end
def add_student(name, grade)
  @roster[grade] ||= []
  @roster[grade] << name
end
def grade(grade)
  @roster[grade]
end
def sort
  school = {}
  @roster.each do |grade, students|
    school[grade] = students.sort
  end
  school
end
end
#school = School.new("Bayside High School")
