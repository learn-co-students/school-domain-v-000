# code here!
require 'pry'

class School
  attr_accessor :name, :roster
  def initialize(name)
    @name = name
    @roster = {}
    puts @roster.length
  end
  def add_student(name, grade)
    @roster[grade] = [] if !(@roster.has_key?(grade))
    @roster[grade] << name
  end
  def grade(grade)
    @roster[grade]
  end
  def sort
    @roster.each do |key, array|
      array.sort!
    end
    @roster
  end
end

highschool = School.new("Dur")
highschool.add_student("Jim","9")
highschool.add_student("Bob","9")
highschool.grade("9")
