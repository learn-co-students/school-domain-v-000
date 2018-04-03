require 'pry'

class School
  attr_reader :name, :roster

  def initialize(name)
    @name = name
    @roster = {}
  end

  def add_student(name, grade)

  if @roster[grade]
  @roster[grade] << name
else
  @roster[grade] = []
  add_student(name, grade)
  end
end

def grade(grade)
  return @roster[grade]
end

def sort

  sorted_array = {}
  roster.each do |key, value|
    sorted_array[key] = value.flatten.sort
  end

  sorted_array
end
end
