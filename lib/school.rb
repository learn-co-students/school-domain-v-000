require 'pry'

class School

  attr_reader :roster 
  
  def initialize(name)
    @name = name
    @roster = {}
  end 
  
  def add_student(name, grade)
    if roster.keys.include?(grade)
      @roster[grade] << name
    elsif grade.is_a?(Integer)
      @roster[grade] = []
      @roster[grade] << name
  end
end

  def grade(grade)
    @roster[grade]
  end

  def sort 
    new_roster = {}
    @roster.each do |grade, students|
      new_roster[grade] = students.sort
    end
    new_roster
  end
  
end

