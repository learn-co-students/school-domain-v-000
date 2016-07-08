# code here!
require 'pry'
class School

attr_reader :school, :roster

def initialize(school)
  @school = school
  @roster = { }
end

def add_student(student, grade)
  @student = student
  @grade = grade
  @roster[@grade] = [] unless @roster.include?(@grade)
    @roster[@grade] << @student
  end

def grade(grade)
  @roster[grade]
end

  def sort
    sorted = {}
    roster.each do |grade, students|
      sorted[grade] = students.sort
    end
    sorted
  end
end