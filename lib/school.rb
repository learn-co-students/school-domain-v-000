# code here!
class School

attr_reader :name,:roster

def initialize(name)
@name = name
@roster = {}
end

def add_student(student, grade)
  if @roster.keys.include?(grade) == false
  @roster[grade] = []
end
  @roster[grade] << student
end

def grade(grade)
  return @roster[grade]
end

def sort
  @roster.each do |grade, student|
    student.sort!
end

return @roster
end
end
