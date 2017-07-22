# code here!
require 'pry'

class School
  attr_reader :name, :roster

  def initialize(name)
    @name = name
    @roster = {}
  end

  def add_student(student_name, grade)
    if @roster.key?(grade)
      @roster[grade] << student_name
    else
      @roster[grade] = []
      @roster[grade] << student_name
    end
  end

  def grade(grade_level)
    @roster[grade_level]
  end

  def sort
    @roster.sort.to_h

    @roster.collect do |grade_level, student_list|
      @roster[grade_level].sort!
    end

    @roster
  end

end
