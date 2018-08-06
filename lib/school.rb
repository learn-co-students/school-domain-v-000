# code here!
require "pry"
class School
  attr_accessor :name, :roster
  
  def initialize(name)
    @name = name
    @roster = {}
  end
  
  def add_student(name, grade)
    @roster[grade] ||= []
    @roster[grade] << name
  end
  
  def grade(student_grade)
    return @roster[student_grade]
      
  end
  
   def sort
     new_roster = {}
     @roster.each do |key, values|
  new_roster[key] =values.sort
end
new_roster
  end
end
