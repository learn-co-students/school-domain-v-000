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
  
    if !@roster[student_grade]
      @roster[student_grade] = []
    end
     @roster[student_grade] << student_name
  end  
  def add_student(["Charity Youngblood", "Joshua Wallace"], 10)
  
  def grade 
  # the grade method should return an array with multiple names of students sorted by grade
    add_student(student_name, student_grade)
    # access key and should output values (student_name)
    [student_grade]
    binding.pry
  end
  
end 
# 


# {10 => ["AC Slater"]}