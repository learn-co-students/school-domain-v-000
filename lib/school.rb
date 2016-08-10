require 'pry'
class School
  attr_accessor :school, :roster
  def initialize(school, roster = {})
    @school = school
    @roster = roster
  end
  
  def add_student(student, grade)
    roster[grade] ||= []
    roster[grade] << student
  end

  def grade(grades)
    roster[grades]
  end  

  def sort
    sorted = {}
    roster.each do |grade, students|
      sorted[grade] = students.sort
    end
    sorted
  end   
end
 










# require 'pry'
# class School
#   attr_accessor :name, :roster

#   def name=(name)
#     @name = name
#   end  
  
#   def initialize(name)
#     @name = name
#     @roster = {}
#   end  

  def add_student(student_name, grade)
    roster[grade] ||= []
    roster[grade] << student_name
    if roster[grade] == true
      roster[grade] << student_name
    elsif
      roster[grade] = Array.new
      roster[grade] << student_name
    end
  end

#   def grade(student_grade)
#     roster[student_grade]
#   end  

#   def sort
#     sorted = {}
#     roster.each do |grade, students|
#       sorted[grade] = students.sort
#     end
#     sorted
#   end    
# end

