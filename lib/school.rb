require "pry"
class School
  attr_accessor :name, :roster 
  
  
   def initialize(name)
   @name = name
   @roster = {}
 end
 
 def add_student(student_name, grade)
 binding.pry
 roster[grade] ||= []
 roster[grade] << student_name 
 
 
#   if roster[grade] 
#         roster[grade] << student_name 
#   else
#     roster[grade] = []
#     roster[grade] << student_name 
# end
end
 

 
end


  # school = School.new("Bayside High School")