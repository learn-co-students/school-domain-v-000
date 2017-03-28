require 'pry'

class School

  attr_accessor :name, :roster

  def initialize(name)
    @name = name
    @roster = {}
  end

  def add_student(student_name, grade)
    @roster[grade] ||= []
    @roster[grade] << student_name
  end

  def grade(student_grade)
    @roster[student_grade]
  end

  def sort
    sorted_roster = {}
    @roster.each { |grade, student_name| sorted_roster[grade] = student_name.sort }
    sorted_roster
  end
  # Does not alter the original hash permanently

end
