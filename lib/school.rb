# code here!
require 'pry'
class School 
  
  def initialize(name)
    @name = name
    @roster = Hash.new {|h,k| h[k] = [] }
  end
  
  def name
    @name
  end
  
  def roster
    @roster
  end
  
  def add_student(student_name, grade)
    @roster[grade] << student_name
  end
  
  def grade(grade)
    @roster[grade]
  end
  
  def sort()
    h = @roster.sort.to_h
    
    h.each do |key,value|
      h[key].sort!
    end
    h
  end
 end