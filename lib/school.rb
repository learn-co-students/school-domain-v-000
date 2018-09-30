require 'pry'

class School
  attr_accessor :roster, :grade, :student_name, :add_student
  attr_reader :name
 
  def initialize(name)
    @roster = {}
    @name = name
  end 
  
  def add_student(student_name, grade)
    @roster[grade] = []
    @roster[grade] << @student_name
  end
end 