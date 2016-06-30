# code here!

class School

  attr_accessor :roster

  def initialize(roster)
    @roster = {}
  end

  def add_student(student, grade)
    if !(@roster.include?(grade))
      @roster[grade] = [student]
    else
      @roster[grade] << student
    end
  end

  def grade(grade)
    @roster[grade]
  end

  def sort
    sorted = {}
    @roster.each do |grade, students|
      sorted[grade] = students.sort
    end
    sorted
  end

end