# code here
require 'pry'
class School
  attr_accessor :name, :roster

  def initialize(name)
    self.name = name
    self.roster = {}
  end

  def add_student(student, grade)
    self.roster[grade] ||= []
    self.roster[grade].push(student)
  end

  def grade(grade)
    self.roster[grade]
  end

  def sort
    self.roster.each do |grade, students|
      self.roster[grade] = students.sort{|x, y| x <=> y}
    end
    self.roster
  end
end
