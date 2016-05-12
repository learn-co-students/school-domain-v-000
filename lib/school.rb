# code here!

class School
  
  attr_reader :name
  attr_accessor :roster

  def initialize (name)
    @name = name
    roster ={}
    @roster = roster
  end

  def add_student(student, grade)
      roster[grade] ||= []
      roster[grade] << student 
  end

  def grade(grade_level)
    roster[grade_level]
  end

  def sort
    roster[grade].each do |grade,student|
      roster[grade] = student.sort
    end
    @roster
  end


end # of class School