# code here!
require 'pry'
class School
  attr_accessor  :name, :roster
  attr_reader :add_student, :grade
  
  def initialize(school_name)
    @roster = {}
  end

  def add_student(student, grade)
      @roster[grade] ||= []
      @roster[grade] << student
  end 
  
  def grade(grade)
    @roster[grade]
  end 
  
  def sort 
    Hash[@roster.sort.map { |a,b| [a, b.sort] }]
  end 
end 