require 'pry'

class School
  attr_accessor :name, :student, :grade
  attr_reader :roster

  def initialize(name)
    @name = name
    @roster = Hash.new
  end

  def add_student(student, grade)
    unless @roster.has_key?(grade)
      @roster[grade] = Array.new
    end
    @roster[grade] << student
  end

  def grade(grade)
    @roster[grade]
  end

  def sort
    @roster = @roster.sort.to_h.each_value do |arr_value|
      arr_value.replace(arr_value.sort)
      # i used #replace because for some reason it wasn't returning
      # the sorted value to the array of values within the roster hash
    end
  end
end
