# code here!
require "pry"
class School
  attr_reader :name, :roster

  def initialize(name)
    @name = name
    @roster = {}
  end

  def add_student(name, grade)
    @name = name
    @grade = grade
    @roster[@grade] = [] unless @roster.include?(@grade)
    @roster[@grade] << @name
  end

  def grade(grade)
    @roster[grade]
  end

  def sort
    @roster.values.sort!
  end
end
