require "pry"

class School

  attr_reader :school, :roster, :student
  attr_accessor


  def initialize(school)
    @school = school
    @roster = {}
  end

  def add_student(student, grade)
    if !(@roster.include?(grade))
      @roster[grade] = []
    end
    @roster[grade] << student
  end

  def grade(number)
    @roster[number]
  end

  def sort
    @roster.each do |grade, student|
      @roster[grade] = student.sort
    end
  end

end
