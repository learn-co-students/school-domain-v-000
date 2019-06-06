require 'pry'

class School
  attr_accessor :name, :grade, :roster
  

  
  def initialize(name)
    @name = name
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
    sorted = {}
    @roster.each do |key, value|
     sorted[key] = value.sort
    end
    sorted
  end
end