require 'pry'
class School
  attr_accessor 
  attr_reader :name, :roster

  
  def initialize(name, roster = {})
    @name = name
    @roster = roster
  end

  def add_student(name, grade)
    @roster[grade] ||= []  
    #   @roster[grade] = [] unless @roster.include?(grade)
    @roster[grade] << name
  end
  
  def grade(grade)
    @roster[grade]
  end
  
  def sort 
    @roster.each_value { |v| v.sort! }
  end
end