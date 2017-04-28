# code here!
class School

  def initialize(school_name)
    @school_name = school_name
    @roster = {}
  end

  attr_accessor :name, :roster

  def add_student(student_name, grade_level)
    if roster.keys.include?(grade_level)
      roster[grade_level] << student_name
    else
      roster[grade_level] = []
      roster[grade_level] << student_name
    end
  end

  def grade(grade_level)
    roster[grade_level]
  end

  def sort
    sorted_students = {}
    roster.each do |grade, students|
      sorted_students[grade] = roster[grade].sort
    end
    sorted_students
  end

end
