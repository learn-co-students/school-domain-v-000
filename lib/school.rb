# code here!
class School
  attr_reader :roster

  def initialize(roster)
    @roster = {}
  end

  def add_student(student, grade)
    @roster[grade] = [] if @roster.none? { |k, v| k == grade}
    @roster[grade] << student
  end

  def grade(grade)
    @roster[grade]
  end

  def sort
    @roster.sort_by { |k, v| v.sort! }.to_h
  end


end
