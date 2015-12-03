require 'pry'

class School
  # attr_accessor :student, :grade
  attr_reader :roster

  def initialize(roster)
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
    sorted_students = {}
    @roster.each {|grade, students|
      sorted_students[grade] = students.sort!
    }
  end

end
