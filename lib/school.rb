# code here!
require 'pry'

# create School class 
class School 
# initialize method for roster
  def initialize(school_name) 
    @school = school_name
    @roster = {}
  end 
  
  def school
    @school
  end 
  
  def roster 
    @roster
  end
  
  def add_student(student_name, student_grade)
  # the add_student method is taking key value pairs 
  # student grade - key
  # student name - value
  # [student_name].map do |name|
    if !@roster[student_grade]
      @roster[student_grade] = []
    end
     @roster[student_grade] << student_name
  end  
  
end 
# 


# {10 => ["AC Slater"]}