require 'pry'

class School
  attr_reader :name, :roster

  def initialize(name)
    @name = name
    @roster = {}
  end

  def add_student(name, grade)
    @roster[grade] ? @roster[grade] << name : @roster[grade] = [name]
  end

  def grade(grade)
    @roster[grade]
  end

  def sort
    @roster.sort.to_h.map { |grade, names| [grade, names.sort] }.to_h
  end

end
