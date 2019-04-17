# code here!
class School
  attr_accessor :roster, :student, :grade

  def initialize(name)
    @name = name
    @roster = {}
  end

  def add_student(name, grade)
    roster[grade] = [] if roster.include?(grade) == false
    roster[grade] << name
  end

  def grade(grade)
    return roster[grade]
  end

  def sort
    sorted = {}
    roster.each do |grade, students|
      sorted[grade] = students.sort
    end
    sorted
  end
end
