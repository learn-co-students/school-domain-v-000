require 'pry'

class School

  attr_accessor :name, :roster

  def initialize(name)
    @name = name
    @roster = {} #Hash.new([])
  end

  def add_student(students, grade)
    #binding.pry
    @roster[grade] ||= []
    @roster[grade] << students
  end

  def grade(grade_num)
    @roster[grade_num]
  end

  def sort
    sorted = {}

    @roster.each do |grade, students|
      sorted[grade] = students.sort
    end
    sorted
  end


end
