require "pry"
class School

def initialize(name)
   @name = name
   @roster = {}
end

def roster
  @roster
end

def add_student(student, grade)
  roster[grade] = [] unless roster[grade]
  roster[grade] << student
end

def grade(grade)
  roster[grade]
end

def sort
  sorted = {}
  roster.each do |grade, students|
    sorted[grade] = students.sort
  end
  sorted
  end
end
