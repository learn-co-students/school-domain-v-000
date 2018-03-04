require 'pry'

class School
  attr_accessor :roster, :name
  def initialize(name)
    @roster = {}
    @name = name
  end

  def add_student(student, grade)
    if @roster.include?(grade)
      roster[grade] << student
    else
      @roster[grade] = []
      @roster[grade] << student
    end
  end

  def grade(grade)
    @roster[grade]
  end

#NOT WORKING
  def sort
    # binding.pry
    @roster.each do |grade, students|
      # binding.pry
      students.sort!
    end
  end
end
