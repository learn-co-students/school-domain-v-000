# code here!

class School

def initialize(school)
  @school = school
  roster = {}
  @roster = roster
end

def roster
  @roster
end

def add_student(name, grade)
if roster.include?(grade) == false
  roster[grade] = []
end
  roster[grade] << name
end

def grade(number)
  roster[number]
end

def sort
sorted_roster = {}

roster.each { |grade, name|
sorted_roster[grade] = name.sort

 }
 sorted_roster


end
end 