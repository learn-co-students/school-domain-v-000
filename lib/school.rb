require 'pry'

class School
  attr_accessor :roster, :name, :grade

  def initialize(school)
    @roster = {}
    @school = school
  end

  def add_student(name, grade)
    if @roster[grade]
      @roster[grade] << name
    else
      @roster[grade] = [name]
    end
  end

  def grade(grade)
    @roster[grade]
  end

  def sort
    @roster.each do |key, value|
      @roster[key] = value.sort
    end
  end
end
