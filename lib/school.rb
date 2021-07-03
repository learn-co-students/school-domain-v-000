# code here!
require 'pry'

class School

  attr_reader :name

  def initialize(name)
    @name = name
    @roster = {}
  end

  def roster
    @roster
  end

  def add_student(name, grade)
    if @roster[grade] == nil
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
    @roster.each do |grade, student_arrays|
      student_arrays.sort!
    end
  end

end
