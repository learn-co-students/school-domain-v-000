# code here!
require 'pry'
class School
  attr_accessor :name, :roster

  def initialize(name)
    @name = name
    @roster = {}
  end

  def add_student(student, number)
    roster[number] ?  roster[number] << student : roster[number] = [student]
    roster
  end

  def grade(grade)
    roster[grade]
  end

  def sort
    roster.each {|grade, student| student.sort!}
    roster
  end

end
