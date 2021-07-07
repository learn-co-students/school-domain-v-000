# code here!
require "pry"
class School

  def initialize(name) #initializing the schools name. with an empty hash roster.
    @name = name  #of course its with instantance variables so they can be
    @roster = {}  #accessed outside the method.
  end

  def roster #roster pulls the roster hash
    @roster
  end

  def add_student(student_name,student_grade)
    @student_name = student_name
    @student_grade = student_grade
    if @roster.keys.find{|i| i == @student_grade}
      @roster[@student_grade] << @student_name #pushes to array if array is detected
    else
      @roster[@student_grade] = [@student_name] #otherwise creates an new array with
      #with the students array
    end
  end

  def grade(grade_number)
    @roster[grade_number] #calls the grade number as a key value
  end

  def sort
    @roster.each do |grade,student_array|
      student_array.sort! #a bang is needed to make it permanent.
    end
  end

  attr_reader :name
end
