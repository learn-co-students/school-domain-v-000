# code here!
class School
attr_accessor :school, :roster
attr_writer :student, :grade

def initialize(school)
  @school=school
@roster={}
end

def add_student(student, grade)
if @roster.keys.include?(grade)
  @roster[grade] << student
else
  roster[grade] = []
  roster[grade] << student
end
end

def grade(grade)
  @roster[grade]
end

def sort
  @roster.each do |grade, name |
    name.sort!
  end
end
end
