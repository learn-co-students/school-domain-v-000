require 'pry'

class School

  attr_accessor :name, :roster, :add_student, :grade, :sort

  def initialize(name)
    @name = name
    @roster = {}
  end

  def add_student(student, grade)
    roster[grade] = [] unless roster.has_key?(grade)
    roster[grade] << student
  end

  def grade(grade)
    roster[grade]
  end

  def sort
    roster.map { |grade, student_list| student_list.sort! }
    roster
  end

end
