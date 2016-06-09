require 'pry'
class School

  #getter methods
  attr_reader :student, :grade, :add_student, :roster, :name, :sort  #returns information stored in each of these variables
  #don't need any setter values as you are not writting values
  #name initialize and settter method
  def initialize(name)
    @name = name
    @roster = {}
  end

  #add_student method
  def add_student(student, grade)
    @student = student
    if roster[grade] == nil #check to see if there is nothing inside
      roster[grade] = [student] #if it is then create a new grade key
    else
      roster[grade] << student #if it isn't and the key is already present then push the student value into it
    end
  end

  def grade(grade)
    @grade = grade
    @roster[grade] #retrieve students from a grade
  end

  def sort
    @roster.each do |grade, student|
      student.sort! #sorts all the students in each array and keeps them sorted with the!
    end
  end
end
