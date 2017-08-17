require 'pry'

class School

  attr_accessor :roster

  def initialize(school)
    @school = school
    @roster ={}
  end

  def add_student(student, grade)
    if @roster.include?(grade)
      @roster[grade] << student
    else
      @roster[grade] = [student]
    end
  end

  def grade(grade)
    @roster[grade]
  end

  def sort
    i = []
    @roster.each do |grade, student|
      i = student.sort
      @roster[grade] = i
    end
  end

end
