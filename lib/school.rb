# code here!
class School
  attr_accessor :roster

  def initialize(school)
    @roster = {}
  end

  def add_student(name, grade)
    roster[grade] = [] if !roster.has_key?(grade)
    roster[grade] << name
  end

  def grade(grade)
    roster[grade]
  end

  def sort
    roster.each { |grade, students| students.sort! }
  end

end
