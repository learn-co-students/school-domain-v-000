require 'pry'

class School
  
  attr_reader  :roster

  def initialize(school_name)
    @school_name = school_name
    @roster = {}
  end
  
  def add_student(student, grade)
    if @roster.include?(grade) == false
    @roster[grade] = []
  end
  @roster[grade] << student
  end
  
  def grade(grade)
    @roster[grade]
  end 

def sort
  @roster.each do |grade, students|
    @roster[grade] = students.sort
  end 
  end 
   
end 