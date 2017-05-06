# code here!
class School
  attr_accessor :roster

  def initialize(name)
    @name = name
    @roster = {}
end

def add_student(student, grade)
  roster[grade] ||= []
  roster[grade] << student
end

def grade(student)
  roster[student]
end

def sort
  roster.each do |grade, student|
  roster[grade] = student.sort
end
end
end
