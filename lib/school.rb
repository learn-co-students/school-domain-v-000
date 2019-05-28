# code here!
require 'pry'

class School
  attr_accessor :name, :roster
  attr_reader

  def initialize(name)
    @name = name
    @roster = {}
  end

  def add_student(student, grade)
    roster[grade] = [] if !roster.has_key?(grade)
    roster[grade] << student
  end

  def grade(grade)
    roster[grade]
  end

  def sort
    sorted = {}
    roster.each {|k, v| sorted[k] = v.sort}
    sorted
  end

end
