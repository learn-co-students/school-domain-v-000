require 'pry'

class School
  attr_accessor :name, :roster

  def initialize(name, roster = {})
    @name = name
    @roster = roster
  end

  def add_student(student, grade_number)
    if roster[grade_number] != nil
      roster[grade_number] << student
    else
      roster[grade_number] = []
      roster[grade_number] << student
    end
  end

  def grade(grade_number)
    roster[grade_number]
  end

  def sort
    sorted_hash = {}
    roster.keys.each do |grade|
      sorted_hash[grade] = roster[grade].sort
    end
    sorted_hash
  end

end
