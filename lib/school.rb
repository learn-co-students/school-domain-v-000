# code here!
require 'pry'
class School

  attr_accessor :name, :roster, :grade

  def initialize(name)
    @name = name
    roster = {}
    @roster = roster
  end

  def add_student(name, grade)
    #if a then a else a = b end
    @roster[grade] ||= []
    @roster[grade] << name
  end

  def grade(grade)
    @roster[grade]
  end

  def sort
    @roster.each do |grade, name|
      name.sort!
    end
  end

end
