# code here!

require 'pry'
class School
  attr_accessor :grade, :student

  attr_reader :name, :roster

  def initialize(name, roster = {})
    @name = name
    @roster = roster
  end

  def add_student(student, grade)
    @student = student
    @grade = grade
    if @roster[grade] == nil
      @roster[grade] = []
      @roster[grade] << student
    else
      @roster[grade] << student
    end
  end

  def grade(grade)
    @roster[grade].collect do |names|
      names
    end
  end

  def sort
    @roster.each do |grades, names|
      names.sort!
    end
    @roster
  end
end

school = School.new("Bayside High School")

school.add_student("AC Slater", 9)

puts school.roster
