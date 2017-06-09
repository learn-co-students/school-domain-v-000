# code here!
class School

attr_reader :name, :roster

def initialize(name)
  @name = name
  @roster = {}
end

def add_student (student, grade)
  @student = student
  @grade = grade
  if roster.has_key?(grade)
    roster[grade] << student
  else
    roster[grade] = []
    roster[grade] << student
  end

end

def grade(students_grade)
  roster[students_grade]
end

def sort
  sorted_roster = {}
  roster.each do |grade, students|
    sorted_roster[grade] = students.sort
  end
  sorted_roster
end

end
