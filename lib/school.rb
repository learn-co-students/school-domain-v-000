# code here!
require 'pry'

class School
  attr_reader :roster

  def initialize(name)
    @name = name
    @roster = {}
  end

  def add_student(name, grade)
    @roster[grade] ||= []
    @roster[grade] << name
  end

  def grade(grade)
    @roster[grade] if @roster.key?(grade)
  end

  def sort
    @roster.each_value(&:sort!)
  end

end