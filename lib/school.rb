# code here
require 'pry'
class School
  attr_accessor :roster
  attr_reader :name
  def initialize(name)
    @name = name
    @roster = {}
  end

  def add_student(name, grade)
    # binding.pry
    @roster[grade] = [] if @roster[grade] == nil
    @roster[grade] << name
  end

  def grade(grade)
    @roster[grade]
  end

  def sort
    @roster.each do |grade, names|
      @roster[grade] = names.sort!
    end
  end
end
