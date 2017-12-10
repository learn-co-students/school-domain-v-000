require 'pry'

class School
  attr_accessor :name
  attr_reader :roster

  def initialize(name)
    @name = name
    @roster = {}
  end

  def add_student(student_name, grade)
    if !@roster.keys.include?(grade)
      @roster[grade] = []
    end
      @roster[grade] << student_name
  end

  def grade(grade_number)
    @roster[grade_number]
  end

  def sort
    @roster.each do |grade, students|
      students.sort!
    end
  end
end

students = School.new("Herricks")
students.add_student("jon", 9)
students.add_student("david", 9)
students.add_student("ann", 9)
puts students.roster
puts students.sort
puts students.roster
