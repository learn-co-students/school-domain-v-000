require 'pry'

class School

  attr_reader :roster

  def initialize(school)
    @school = school
    @roster = {}
  end

  def add_student(name, grade)
    if !@roster.has_key?(grade)
      @roster[grade] = []
      @roster[grade] << name
    else
      @roster[grade] << name
    end
  end

  def grade(grade)
    @roster[grade]
  end

  def sort
    @roster.each_value { |students| students.sort! }
    @roster
  end

end
