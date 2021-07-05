# code here!
require "pry"
class School

  def initialize(name,roster = {})
    @name = name
    @roster = roster
  end
  attr_reader :name, :roster

  def add_student(name,grade)

    roster[grade] ||= []
    roster[grade] << name

  end
  def grade(grade)
    roster[grade]
  end

  def sort

    roster[9] = roster[9].sort
    roster.sort.to_h

  end

end
