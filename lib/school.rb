# code here!
require "pry"
class School
  attr_reader :school, :roster

  def initialize(school)
    @school = school
    @roster = {}
  end

  def add_student(student, grade)
    if @roster.include?(grade)
      @roster[grade] << student
    else
      @roster[grade] = []
      @roster[grade] << student
    end
  end

  def grade(grade)
    @roster[grade]
  end

  def sort
    new_roster = @roster.sort.to_h
    new_roster.each do |key, value|
      value.sort!
    end
    new_roster
  end
end
