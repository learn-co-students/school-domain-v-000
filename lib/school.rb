# code here!
class School
  attr_accessor :student, :grade
  attr_reader :roster

  ROSTER = {}

  def initialize(roster)
    @roster = ROSTER
  end

  def add_student(student, grade)
    @roster[grade] = student
  end
end
