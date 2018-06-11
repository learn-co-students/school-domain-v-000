# code here!
# require 'pry'

class School
  attr_reader :name
  attr_accessor :roster, :grade

  def initialize(name)
    @name = name
    @roster = {}
  end

  def add_student(student, grade)
    @roster[grade] ||= []
    @roster[grade] << student
    @roster
  end

  def grade(grade)
    @grade = @roster[grade]
  end

  def sort
    sorted = {}
    @roster.each do |grade, student|
      sorted[grade] = student.sort
    end
    sorted
  end
end
