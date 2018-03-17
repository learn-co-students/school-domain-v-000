class School
  attr_accessor :roster

  def initialize(school_name)
    @school_name = school_name
    @roster = {}
  end

  def add_student(student_name, grade)
    roster[grade] ||= []
    roster[grade] << student_name
  end

  def grade(grade)
    roster[grade]
  end

  def sort
    sorted_students = {}
    roster.each do |grade, student_array|
      sorted_students[grade] = student_array.sort
    end
    sorted_students
  end
end