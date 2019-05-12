require 'pry'
class School

attr_accessor :name, :roster

  def initialize(name)
    @name = name
    @roster = {}
  end

  def add_student(student, grade)
    @roster[grade] ||= []
    @roster[grade] << student
  end

  def grade(grade)
    @roster[grade]
  end

  def sort
    students = []
    roster.each do |key, values|
      students = values.sort
      binding.pry
      roster[key] = students
    end
  end

end
