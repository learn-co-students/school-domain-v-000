require 'pry'
class School
   def initialize(title)
     @name = title
     @roster={}
   end 
  
  def roster
    @roster 
  end 
  
  def add_student(student_name,grade)
    
  if @roster.has_key?(grade)
     @roster[grade].push(student_name)
  else 
    @roster[grade] = [student_name]
  end 
    end
  
   def grade(student_grade)
     return @roster[student_grade] 
   end 
     
   def sort
     @roster.each { |grade, students| students.sort! }
  end 
  
end 