require 'pry'

class School
  attr_accessor :student, :grade
  attr_reader :name, :roster
  
  
  def initialize(name)
    @name = name
    @roster = {}
  end
  
  def add_student(student, grade)
    @roster[grade] = [] if !@roster.keys.include? grade
    @roster[grade] << student
    end
  
  def grade(grade_num)
    @roster[grade_num]
  end
  
  def sort
    @roster.each {|gk, av| @roster[gk] = av.sort}
  end
end 