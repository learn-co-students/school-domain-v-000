class School
  attr_reader :name, :roster

  def initialize(school_name, school_roster = {})
    @name = school_name
    @roster = school_roster
  end

  def add_student(student, grade)
    roster[grade] || roster[grade] = []
    roster[grade] << student
  end

  def grade(student_grade)
    roster[student_grade]
  end

  def sort
    sorted_roster = {}
    roster.each do |grade, students|
      sorted_roster[grade] = students.sort
    end
    sorted_roster
  end
end
