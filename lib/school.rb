# code here!
require 'pry'

class School
  attr_accessor :name, :roster
  attr_reader :grade, :student_name

  def initialize(name)
    @name = name
    @roster = {}
  end
  
  def add_student(student_name,grade)
    @grade = grade
    @student_name = student_name
      roster[grade] ||= []
      roster[grade] << @student_name 
   
    end
    
  def grade(grade)
    roster[grade]
  end  
  
  def sort
    sorted = {}
    roster.each {|grade, student| 
      sorted[grade] = student.sort} 
    sorted
  end
  
end
