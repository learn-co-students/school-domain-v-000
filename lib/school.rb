# code here!
require 'pry'

class School

  attr_reader :name, :roster 

  def initialize(name)
    @name = name
    @roster = {}
  end

  def add_student(name, grade)
    if @roster.keys.any? { |e| e == grade } == false
      @roster[grade] = []
    end
    @roster[grade] << name
  end

  def grade(grade)
    @roster[grade]
  end

  def sort
    @roster.map do |grade, name_array|
      name_array.sort!
    end
    @roster
  end

end