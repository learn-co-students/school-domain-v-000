require 'pry'

class School
  attr_accessor :name, :roster

  def initialize(name, roster = {})
    @name = name
    @roster = roster
  end

  def add_student(student, grade)
    if roster[grade] != nil
      roster[grade] << student
    else
      roster[grade] = []
      roster[grade] << student
    end
  end

  def grade(grade_number)
    roster[grade_number]
  end

end
