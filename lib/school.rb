# code here!
require 'pry'
require 'awesome_print'

class School
  attr_accessor :name, :roster

  def initialize(name)
    @name = name
    @roster = {}
  end

  def add_student(student_name, grade)
    # if the value on the left of the equal is falsy, set it equal to the value on the right.
    #if roster[grade] does not exist, set it to an empty array.
    roster[grade] ||= []
    roster[grade] << student_name
    # unless @roster[grade]
    #   @roster[grade] = []
    # end
    # @roster[grade] << student_name
  end

  def grade(grade_number)
    # roster[grade_number]
    @roster[grade_number]
  end

  def sort
    sorted_students = {}
    roster.each do |grade, students|
      sorted_students[grade] = students.sort
    end
    sorted_students
  end
end

  #   sorted_grades = @roster.sort.to_h
  #   sorted_grades.each do |grade, students|
  #     sorted_grades[grade] = students.sort
  #   end
  #   return sorted_grades
  # end

# binding.pry
