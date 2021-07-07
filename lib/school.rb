require 'pry'

class School
# attr_accessor :@roster

  def initialize(name)
    @name = name
    @roster = {}
  end

  def roster
    @roster
  end

  def add_student(name, grade)
    @roster[grade] ||= []
    @roster[grade] << name
  end

  def grade(grade)
    @roster[grade]
  end

  def sort
    @roster.each{|grade, arr| arr.sort!}
    @roster.sort.to_h
  end

end