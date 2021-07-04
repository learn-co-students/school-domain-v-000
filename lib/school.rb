# code here!
class School

attr_accessor :name, :roster

def initialize(name)
  @name
  @roster = {}
end

def add_student(student_name, grade)
  roster[grade] || roster[grade] = [] #or roster[grade] ||= []
  roster[grade] << student_name
end

def grade(grade)
  roster[grade]
end

def sort
    sort_students = {}
    roster.each do |grade, students|
      sort_students[grade] = students.sort
    end
    sort_students
  end

end
