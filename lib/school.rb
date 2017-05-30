# code here!

class School
  attr_accessor :grade, :roster

  def initialize(name)
    @name = name
    @roster = {}
  end

  def add_student(student, grade)
    roster[grade] ||= []
    if roster[grade].include?(student) == false
      roster[grade] << student
    end
  end

  def grade(grade)
    grade = roster[grade]

  end

  def sort
    sorted = {}
    roster.each do |grade, students|
      sorted[grade] = students.sort
    end
    sorted
  end
end
