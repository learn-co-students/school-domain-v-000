class School
  attr_accessor :student, :roster

  def initialize(school)
    @school = school
    @roster = {}
  end

  def add_student(student, grade)
    roster[grade] ||= []
    roster[grade] << student
  end

  def grade(grade)
    roster[grade]
  end

  def sort
    sorted ||= roster
    sorted.keys.map { |grade| sorted[grade].sort! }
    sorted
  end

end
