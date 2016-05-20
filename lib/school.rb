# code here!
require 'pry'

class School

  attr_reader :name, :roster

  def initialize(name, roster = {})
    @name = name
    @roster = roster
  end

  def add_student(student_name, grade)
    if @roster.keys.include? (grade)
      @roster[grade] << student_name
    else
      @roster[grade] = []
      @roster[grade] << student_name
    end
  end

  def grade(grade)
    @roster[grade]
  end

  def sort
    @roster.map do |grade, student_array|
      student_array = student_array.sort
      @roster[grade] = student_array
    end
    @roster
  end

end
