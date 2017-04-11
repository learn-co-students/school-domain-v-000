require 'pry'
class School

  attr_accessor :roster

  def initialize(name)
    @name = name
    @roster = {}
  end

  def add_student(student_name, grade_num)
    if !roster[grade_num]
      roster[grade_num] = []
      roster[grade_num] << student_name
    else
      roster[grade_num] << student_name
    end
  end

  def grade(grade_num)
      self.roster[grade_num]
  end

  def sort
    self.roster.each do |grade_num, student_name|
      roster[grade_num] = student_name.sort{|a,b| a<=>b}.to_a             
    end
  end
end
