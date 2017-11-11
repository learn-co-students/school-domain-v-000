# code here!
require 'pry'

ROSTER = []

# create School class 
class School 
# initialize method for roster
  def initialize(school_name) 
    @school = school_name
  end 
  
  def school
    @school
  end  
  
  def roster=(school_roster)
    @roster = school_roster
  end
  
  def roster(student_name, student_grade)
    ROSTER << student_name
    ROSTER << student_grade
  end
  
  def add_student(student_name, student_grade)
  # the add_student method is taking key value pairs 
  # student name - key 
  # student grade - value 
   student_name: student_grade
  end  
  
end 
# 

