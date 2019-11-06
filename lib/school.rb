# code here!
require "pry"

class School

  attr_accessor :roster
  attr_reader :name

  def initialize(name)
    @name=name
    @roster={}
  end

  def add_student(student,grade)
    if roster.keys.include?(grade)
      roster[grade] << student
    else
      roster[grade] = [student]
    end
  end

  def grade(grade)
    roster[grade]
  end

  def sort
    roster.each { |grade,students| roster[grade] = students.sort}
  end
end 
