require 'pry'
# code here!
class School
  attr_reader :roster

  def initialize(name)
    @name = name
    @roster = Hash.new
  end

  def add_student(student,grade)
    #creates a new grade if it doesn't already exist
    @roster[grade] = Array.new unless @roster.any? do |existing_grades,classes|
      existing_grades == grade
    end
    #adds student to the grade array
    @roster[grade] << student
  end

  def grade(number)
    @roster.find do |grade, classes|
      return classes if grade == number
  end
 end

 def sort
   @roster.each do |grade,classes|
   classes.sort!
   end
 end

end
