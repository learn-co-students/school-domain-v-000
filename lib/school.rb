require 'pry'
class School
  attr_reader :name, :roster

  def initialize(name)
    @name = name
    @roster = {}
  end

  def add_student(student, grade)
    if @roster.has_key?(grade)
      @roster[grade] << student
    else
      @roster[grade] = []
      @roster[grade] << student
    end
  end

  def grade(grade_level)
    @roster[grade_level]
  end

  def sort
    @roster.map { |grade, students_in_grade| students_in_grade.sort! }
    @roster
  end

end

@school = School.new("Test School")

@school.add_student("Homer Simpson", 9)
@school.add_student("Jeff Baird", 10)
@school.add_student("Avi Flombaum", 10)
@school.add_student("Blake Johnson", 7)

@school.sort
