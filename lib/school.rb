require 'pry'
# code here!
class School

  attr_reader :name, :roster
  def initialize(name)
    @name = name
    @roster = Hash.new{|h, k| h[k] = []}
  end

  def add_student(student_name, grade)
    self.roster[grade] << student_name
  end

  def grade(grade)
    self.roster[grade]
  end
  def sort
    self.roster.each do |grade, students|
      students.sort!
    end
  end
end
