require'pry'
class School
  attr_reader :name, :roster

  def initialize(name)
    @name = name
    @roster = {}
  end

  def add_student(name, grade)
    @roster[grade] = [] if @roster[grade].nil?
    @roster[grade] << name
  end

  def grade(n)
    @roster[n]
  end

  def sort
    @roster.sort
    @roster.each{ |grade, name| name.sort! }
    @roster
  end
end
