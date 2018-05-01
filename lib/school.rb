# code here!
require 'pry'

class School
  attr_reader :school
  attr_accessor :roster

  def initialize(school)
    @school = school
    @roster = Hash.new{ |h, k| h[k] = [] }
  end

  def add_student(student, grade)
    @roster[grade] << student
  end

  def grade(grade)
    students_in_grade = []
    @roster.each { |key,value| (students_in_grade << value).flatten! if key == grade }
    students_in_grade
  end

  def sort
    @roster.each do |key,value|
      @roster[key] = value.sort
    end
    @roster
  end
end
