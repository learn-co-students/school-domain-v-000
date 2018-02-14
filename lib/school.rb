require 'pry'

class School
  attr_accessor :roster
  attr_reader :name, :grade
  
  def initialize(name)
    @name= name
    @roster = {} 
  end
  
  
  def add_student(student, grade)
    if @roster[grade].nil?
      @roster[grade] = []
    end
      @roster[grade] << student
  end  
  
  def grade(grade)
    @roster[grade]
  end 
  
  def sort 
    @roster.sort
    @roster.each {|grade, student_array| student_array.sort!}
  end  
end  