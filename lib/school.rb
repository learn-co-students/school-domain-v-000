# code here!

# require 'pry'

class School

  attr_accessor :roster

  def initialize(name, roster = {})
    @name = name
    @roster = roster

  end

# binding.pry


  def add_student(student,grade)
    if roster.has_key?(grade)
      roster[grade] << student
    else
      roster[grade] = []
      roster[grade] << student
    end
  end

  def grade(grade)
      roster[grade]
  end

  def sort
    roster.map do|grade,student|
      roster[grade] = student.sort
    end
    roster
  end
end
