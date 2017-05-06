# code here!
require 'pry'

class School

  attr_accessor :roster

  def initialize(name)
    @name = name
    @roster = {}
  end



  def add_student(name, grade)
    if roster.has_key? grade
      roster[grade]  << name
      else
      roster[grade] = []
      roster[grade] << name
    end
  end

  def grade(key_name)
    if roster.has_key? key_name
      roster[key_name]
    end
  end

  def sort
    sorted = {}
    roster.each do |key, values|
      sorted[key] = roster[key].sort
    end
    sorted
  end

end
