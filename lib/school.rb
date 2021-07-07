require 'pry'

class School
  attr_accessor
  attr_reader :grade, :name, :roster

  def initialize(name)
    @name=name
    @roster = {}
  end

  def add_student(name, grade)
    @roster[grade] ||= []
    @roster[grade] << name
  end

  def grade(grade)
    @roster.fetch(grade)
  end

  def sort
    sorted_list = {}
    @roster.each do |grade, student|
      sorted_students = student.sort
      sorted_list[grade] = sorted_students
    end
    sorted_list
  end #method

end #class
