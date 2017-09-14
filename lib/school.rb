# code here!

require 'pry'

class School

  def initialize(name)
    @name = name
    @roster = {}
  end

  def add_student(student_name,grade)
    if @roster[grade] == nil
      @roster[grade] = [student_name]
    else
      @roster[grade] << student_name
    end
  end

  def roster
    @roster
  end

  def grade(grade)
    @roster[grade]
  end

  def sort
    @roster.collect do |grade,students|
      @roster[grade] = students.sort
    end
    @roster
  end

end
