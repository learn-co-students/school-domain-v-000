# code here!

require 'pry'

class School
  attr_accessor :name, :roster

  def initialize(name)
    @name = name
    @roster = {}
  end

  def add_student(student_name, grade)
    @roster[grade] ||= [] #or equals: a ||= b means, if a is undefined then assign it the value of b, otherwise leave it alone. also a || a = b. creates new array within roster hash unless that grade has already been added.
    @roster[grade] << student_name #add student to array inside grade
  end

  def grade(grade_num)
    @roster[grade_num]
  end

  def sort
    sorted_roster = {} #create new array to return sorted students
    @roster.each do |grade, students| #for each key/value in original roster
      sorted_roster[grade] = students.sort #new roster[new key] = array of sorted students
    end
    return sorted_roster
  end

end
