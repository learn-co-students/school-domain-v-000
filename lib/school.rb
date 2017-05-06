# code here!
class School
  attr_reader :roster

  def initialize(roster)
    @roster = {}
  end

  def add_student(student, grade)
    @roster[grade] ||= []
    @roster[grade] << student
  end

  def grade(student_grade)
    @roster[student_grade]
  end

  def sort
    roster_sort = {}
    @roster.each do |grade, student|
      roster_sort[grade] = student.sort
    end
    roster_sort
  end
end
