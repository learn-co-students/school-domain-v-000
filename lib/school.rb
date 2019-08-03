# code here!
class School
  attr_reader :name, :roster

  def initialize(school_name)
    @school_name = school_name
    @roster = {}
  end

  def add_student(student_name, grade)
    @roster.has_key?(grade)? @roster[grade] << student_name : @roster[grade] = [student_name]
  end

  def grade(grade_arg)
    @roster[grade_arg]
  end

  def sort
    sorted = {}
    roster.each do |grade, students|
      sorted[grade] = students.sort
    end
    sorted
  end
end
