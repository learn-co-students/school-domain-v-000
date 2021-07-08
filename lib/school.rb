# code here!
require 'pry'
class School
  attr_accessor :name, :roster
  
  def initialize(roster)
   @roster = {}
   
  end
  
  def add_student(name, grade)
  #  if roster[grade]==nil          #this is a less efficient but functional way
  #    roster[grade] = []           #to test if a key exists
  #  end
 
    roster[grade] ||= []            #this method is much cleaner looking!
    roster[grade] << name
  end
  
  def grade(grade_level)
    roster[grade_level]
  end
  
  def sort
    roster.each do |key, value|
      value.sort!
    end
  end
end