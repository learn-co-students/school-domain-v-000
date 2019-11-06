class School

#initialize method is called automatically whenever #new is used,
#method that gets triggered automatically when something else happens
def initialize(name)
#roster instance variable
  @roster = {}
end

def roster
  @roster
end

def add_student(student_name, grade)
# ||= if roster[grade] is false, evaluate [] and set
# roster[grade] to the result
  roster[grade] ||= []
#shovels student_name to roster
  roster[grade] << student_name
end

def grade(student_grade)
  roster[student_grade]
end

def sort
  sorted = {}
  roster.each do |grade, students|
#sorts students in alphabetical order
    sorted[grade] = students.sort
  end
  sorted
end
end
