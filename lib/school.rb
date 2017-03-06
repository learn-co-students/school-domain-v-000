require 'pry'

class School

  def initialize(name)
    @name = name
    @roster = {}
  end

  def roster
    @roster
  end

  def add_student(name, grade)
    if @roster[grade] ||= []
    @roster[grade] << name
  end
  end

  def grade(grades)
    @roster[grades]
  end

  def sort
    @roster.values
  end



end
