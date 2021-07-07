 require 'pry'
 class School
  
  def initialize(roster)
    @roster={}
  end
  
  def roster
    @roster
  end
 
  def add_student(student, grade)
    @roster[grade] ||= []
    @roster[grade] << student
  end
  
  def grade(num)
    @roster.fetch(num)
  end 
  
  def sort 
    @roster.each do |key, value|
     value.sort!  
    end 
  end 
end 