# code here!
require "pry"
class School
  attr_accessor :students, :roster, :grade
  def initialize(name)
    @name = name
    @roster = {}
  end

  def name
    @name
  end

  def add_student(student, grade)
    roster[grade] ||= roster[grade] = []
    roster[grade] << student
  end

  def grade(grade)
    roster[grade]
  end

  def sort
    sorted_grades = Array.new
    sorted_students = Array.new
    sorted_roster = Hash.new
    roster.each do |grade, student_array|
      sorted_roster[grade] = student_array.sort!
    end
    sorted_roster
  end
end
