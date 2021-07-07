# code here!
require "pry"
class School
  attr_reader :name, :roster, :add_student

  def initialize(name, roster={})
    @name = name
    @roster = {}
  end

  def add_student(student, grade)
    if @roster.keys.include?(grade)
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
    @roster.each do |grade, student_array|
      student_array.sort!
      @roster
    end
  end
end
 # roster = {
 #   9 => ["Laura", "Elyse"],
 #   10 => ["John"]
 # }
