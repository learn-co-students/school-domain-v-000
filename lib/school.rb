# code here!
require 'pry'
class School

  def initialize(name)
    @name = name
    @roster = {}
  end



  def roster
    @roster
  end

  def add_student (student,grade)
    if @roster.keys.include?(grade)
      @roster[grade]<<student
    else
      @roster[grade] = []
      @roster[grade]<<student
    end
  end

  def grade(grade_number)
    @roster[grade_number]
  end

  def sort
    @roster.each do |grade,students_array|
      students_array.sort!
    end
  end


end
