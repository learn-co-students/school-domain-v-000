# code here!
require 'pry'
class School
  attr_accessor 
  attr_reader :roster, :school
  
  def initialize(roster)
   @roster = {}
  end
  
  def add_student(name, grade)
    @roster[grade] ||= []
    @roster[grade] << name
  end
  
  def grade(grade)
  @roster[grade]
    
  end
  
  def sort
    school = {}
    @roster.each do |k, v|
      school[k] = v.sort
    end
    school
    end
  
end