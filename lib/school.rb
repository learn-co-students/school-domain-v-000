# code here!
require 'pry'

class School
  # attr_accessor :roster
  attr_reader :name, :roster
  
  def initialize(name)
    @name = name
    @roster = {}
  end
  
  ROSTER = []
  
  def add_student(name, grade)
    @roster[grade] ||= []
    @roster[grade] << name
  end
  
  
  
  def grade(grade)
    @roster[grade]
end

def sort
  @roster.map do |grades, student|
   @roster[grades].sort!
 end
@roster
  end
end
