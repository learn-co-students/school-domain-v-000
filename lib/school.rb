require 'pry'
# code here!
class School
  attr_accessor :roster

  def initialize(school)
    @school = school
    @roster = {}
  end

  def add_student(name, grade)
    @roster[grade] ||= []
    @roster[grade] << name
  end

  def grade(grade)
    @roster[grade]
  end

  def sort
    @roster.values.each { |student_array| student_array.sort! }
    @roster = @roster.sort.to_h
  end

end
