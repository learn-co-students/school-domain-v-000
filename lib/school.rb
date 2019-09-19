# code here!
class School 
  attr_accessor :name, :roster #create reader and writer
  
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
    alphabetized = {}
    @roster.each do |grade, name|
      alphabetized[grade] = name.sort
    end 
    alphabetized 
  end 
end 