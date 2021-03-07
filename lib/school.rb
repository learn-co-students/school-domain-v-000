require 'pry'
# code here!
class School
  
  attr_accessor :roster, :grade, :student
  
  def initialize(name) 
    @name = name
    @roster = {}
  end
  
  def add_student(student, grade)
    grade_exists = true
    @roster.each do |roster_grade, roster_students|
      if roster_grade == grade
        grade_exists = true
      else
        grade_exists = false
      end
    end
    if @roster == {} || grade_exists == false
      @roster[grade] = [student]
    else
      @roster[grade] << student
    end
  end
  
  def grade(grade)
    @roster[grade]
  end
  
  def sort
    @roster.each do |roster_grade, roster_students|
      roster_students.sort!
    end
  end
end