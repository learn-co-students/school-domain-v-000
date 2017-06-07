require "pry"

# code here!
class School
  attr_accessor :name, :roster
  def initialize(name)
    @name = name
    @roster = {}
  end

  def add_student(student, grade)
    unless @roster[grade].is_a?(Array)
      @roster[grade] = []
    end
    @roster[grade] << student
  end

  def grade(grade_level)
    @roster[grade_level]
  end

  def sort
    sorted_roster = {}
   @roster.each do |grade,student|
      sorted_roster[grade] = student.sort
    end
    sorted_roster
  end

end
