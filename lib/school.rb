# code here!
require 'pry'
class School
  attr_reader :school_name, :roster

  def initialize(school_name, roster = {})
    @school_name = school_name
    @roster = roster
  end
#  def roster
#    roster = Hash.new { |hash, key| hash[key] = Array.new }
#  end

  def add_student(student_name, student_grade)
    if !roster.has_key?(student_grade)
      roster[student_grade] = []
    end
    roster[student_grade] << student_name
  end

  def grade(g)
    roster[g]
  end

  def sort

    roster.each do |grade, student_array|
      roster[grade] = student_array.sort
    end
    #roster.sort
    roster
  end
end
