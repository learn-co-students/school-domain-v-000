# code here!
require 'pry'

class School
  attr_reader :name, :roster, :grade, :student


  def initialize(name)
    @name = name
    @roster = {}
  end

  def add_student(student, grade)
    @student = student
    @grade = grade
    if @roster.include?(grade)
      @roster[@grade] << @student
    else
      @roster[@grade] = []
      @roster[@grade] << @student
    end
  end

  def grade(grade)
    @grade = grade
    @roster[@grade]
  end

  def sort
    @roster.each do |k,v|
      v.sort!
    end
    @roster
  end

end
