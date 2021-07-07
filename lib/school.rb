# code here!
# domain model - representation of real world concepts, multiple classes
# classes are templates for objects, has attributes and behaviors
# instances are objects

class School
  attr_accessor :name, :roster

  def initialize(roster)
    @name = name
    @roster = {}
  end

  def add_student (name, grade)
    @roster[grade] ||= []
    @roster[grade] << name
  end

  def grade(grade_value)
    @roster[grade_value]
  end

  def sort
    sorted = {}
    roster.each do |grade, students|
      sorted[grade] = students.sort
    end
    sorted
  end

end
