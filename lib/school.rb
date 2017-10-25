# code here!
class School

attr_accessor :name, :roster

def initialize(name)
  @name = name
@roster = {}
end

def add_student(student_name, grade)

  if @roster.has_key?(grade)
  @roster[grade] << student_name
else
  @roster[grade] = []
    @roster[grade] << student_name
end
end

def grade(grade_of_students)
@roster[grade_of_students]
end

def sort
  sorted = {}
  @roster.each do |grades,students|
    sorted[grades] = students.sort
end
sorted
end

end
