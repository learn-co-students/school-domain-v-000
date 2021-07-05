require "pry"
class School
  attr_accessor :roster

  def initialize(name)
    @name = name
    @roster = Hash.new 
  end
    
  def add_student(student, grade)
    if @roster.include?(grade)
      @roster[grade] << student
    else
      @roster[grade] = []
      @roster[grade] << student
    end
  end 
  
  def grade(grade)
    @roster[grade]
  end
  
  def sort
    @roster.each { |k,v| v.sort! }
  end    
  
end

