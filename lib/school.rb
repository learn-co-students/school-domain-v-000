class School

  attr_accessor :student, :grade
  attr_reader :roster

  def initialize(roster)
    @roster = {}
  end

  def add_student(student, grade)
    @student = student
    @grade = grade
    if roster[grade] == nil
      roster[grade] = []
    end
    roster[grade] << student
  end

  def grade(grade)
    return roster[grade]
  end

  def sort
    sorted_roster = {}
    roster.each do |grade, students|
      sorted_students = students.sort
      sorted_roster[grade] = sorted_students
    end
    return sorted_roster
  end
end
