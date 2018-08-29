require 'pry'
class School 
  attr_reader :roster
  
  def initialize(name)
    @name = name 
    @roster = {}
  end 
  
  def add_student(student, grade)
    if roster[grade] == nil 
      roster[grade] = []
    end
    
    roster[grade] << student
  end
  
  def grade(num)
    roster[num]
  end 
  
  def sort 
    sorted = {}
    roster.each {|grade, students| sorted[grade] = students.sort}
    #binding.pry
    
    sorted
  end 
  
end