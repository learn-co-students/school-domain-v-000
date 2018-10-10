require 'pry'
class School
  attr_accessor :student_name, :grade
  attr_reader :school_name, :roster
  
  def initialize(school_name)
    school_name= (school_name)
    @school_name = school_name
    
    roster = {}
    @roster = roster
  end
  
  def add_student(student_name, grade)
    @roster[grade] ||= []
    @roster[grade] << student_name
  end
  
  def grade(grade)
    roster[grade]
  end
  
  def sort 
    #binding.pry
    sorted = {}
    roster.each do |grade, students|
      sorted[grade] = students.sort
    end
    sorted
  end
    
end