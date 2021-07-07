require 'pry'

class School 

  attr_accessor :roster


  def initialize(school)
    @school = school 
    @roster ={}

  end 

  def add_student(student, grade)
    @roster[grade] ||= []
    @roster[grade]<< "#{student}"
  end 

  def grade(grade)
    @roster[grade]
  end 

  def sort
    collection ={}
    @roster.map do |grade, students|
      collection[grade] ||= []
      collection[grade] = students.sort
    end 
    collection
  end 

end 