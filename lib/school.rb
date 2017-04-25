require 'pry'

class School
  attr_accessor :name, :roster

  def initialize(name)
    @name = name
    @roster = {}
  end

  def add_student(name, grade)
    roster[grade] ||= []
    roster[grade] << name
  end

  def grade(grade)
    roster[grade]
  end

  def sort
    students_by_name = {}
    roster.each do |grade, name|
      students_by_name[grade] = name.sort
    end
    students_by_name
  end
end
