require 'pry'

class School
  attr_accessor :roster

  def initialize(options={})
    @name = options[0]
    @roster = Hash.new
  end

  def add_student(student, grade)
    if roster.has_key?(grade)
      roster[grade] << student
    else
      roster[grade] = [student]
    end
  end

  def grade(n)
    roster.fetch(n)
  end

  def sort
    roster.each { |k,_v| roster[k].sort! }
  end
end
