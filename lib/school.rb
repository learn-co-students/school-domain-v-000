# code here!

require 'pry'

class School

  #ROSTER = Hash.new

  def initialize(name)
    @name = name
    @roster = Hash.new
  end

  def roster
      @roster
  end

  def add_student(name, grade)

    keys = @roster.keys
    if keys.include?(grade)
      @roster[grade].push(name)
    else
      @roster[grade] = Array.new
      @roster[grade].push(name)
    end

  end

  def grade(grade)
    students = @roster[grade]
    students
  end

  def sort
    @roster.each do |grade, student_array|
      @roster[grade] = student_array.sort
    end
    binding.pry
  end






end
