# code here!
class School
 attr_accessor :roster

 def initialize(name)
   @name = name
   @roster = {}
 end

 def add_student(student, grade)
   if roster[grade] == nil
     roster[grade] = [student]
   else
     roster[grade] << student
   end
 end

 def grade(grade_number)
   @roster[grade_number]
 end

 def sort
   sorted_students = {}
   roster.each do |grade, students|
     sorted_students[grade] = students.sort
   end
   sorted_students
 end

end
