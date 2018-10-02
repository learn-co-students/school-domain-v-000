require 'pry'

# code here!

class School
  attr_reader :name, :roster 
  

  def initialize(name)
    @name = name 
    @roster = {}
  end 

  def add_student(student, grade)
    if @roster.has_key?(grade)
      @roster[grade]<< student
    else 
      @roster[grade] = [student]
    end 
  end 
  
  def grade(grade)
    @roster[grade]
  end 
  
  def sort 
    @roster.collect do |grade, students|
      @roster[grade] = students.sort
    end 
    @roster 

    
    
    


  end 
  
  
end 