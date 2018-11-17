# code here!

class School
  attr_accessor :name, :roster
  
  def initialize(name)
    @name = name
    @roster = {}
  end
  
  def add_student(name, grade)
    roster[grade] ||= []
    roster[grade] << name
  end
  
  def grade(grade)
    roster[grade]
  end
  
  def sort 
    newroster = {}
    roster.each do |grade, name|
    newroster[grade] = name.sort
    end
    newroster
  end
  
end