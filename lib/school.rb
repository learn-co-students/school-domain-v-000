require 'pry'

class School

  attr_accessor :name, :roster, :add_student, :grade, :sort

  def initialize(name)
    @name = name
    @roster = {}
  end

  def add_student(student, grade)
    self.roster[grade] = [] unless roster.has_key?(grade)
    self.roster[grade] << student
  end

  def grade(grade)
    self.roster[grade]
  end

  def sort
    self.roster.map { |grade, student_list| student_list.sort! }
    self.roster
  end

end
