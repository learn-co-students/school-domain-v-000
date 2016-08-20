require 'pry'
class School
  attr_accessor :school, :roster, :student, :grade

  def initialize(school)
    @school = school
    @roster = {}
  end

  def add_student(student, grade)
    roster[grade] ||= []
    roster[grade] << student
  end

  def grade(grade)
    roster[grade]
  end

  def sort
    alphabetical = {}
    roster.each do |grade, students|
      alphabetical[grade] = students.sort
    end
    alphabetical.sort.to_h
  end
end
