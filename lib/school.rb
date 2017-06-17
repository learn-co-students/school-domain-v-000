# code here!
class School


 def initialize(name)
   @name = name
   @roster = {}
 end

 def add_student(student, grade)
    if @roster.keys.include?(grade)
      @roster[grade] << student
    else
      @roster[grade] = []
      @roster[grade] << student
    end
 end

 def roster
   @roster
 end

 def grade(grade)
   @roster[grade]
 end

 def sort
   @roster.each do |grade, students|
      @roster[grade].sort!
   end
 end
end
