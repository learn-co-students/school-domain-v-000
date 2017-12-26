require 'pry'
class School

  def initialize(name)
    @name = name
    @roster = {}
  end
  attr_accessor :roster, :name

  def add_student(name, grade)
  
    @roster[grade] ||= []
    @roster[grade] << name
  end

  def grade(grade)
    @roster.values_at(grade).flatten   
  end

  def sort
   @roster.each {|k, v| v.sort!} 
  end
end