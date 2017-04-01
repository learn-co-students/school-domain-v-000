# code here!

class School
  attr_accessor :name_of_school, :roster
  attr_reader :grade

  def initialize(name_of_school)
    @name_of_school = name_of_school
    @roster = {}
  end

  # def add_student(student_name)
  #   roster[grade_level] ||= []
  #   roster[grade_level] << student_name
  # end

  def add_student(student_name, grade)
    roster[grade] ||= []
    roster[grade] << student_name
  end

  def grade(grade_level)
    roster[grade_level]
  end

  def sort
    sorted = {}
    roster.each do |grade_level, students|
      sorted[grade_level] = students.sort
    end
    sorted
  end
end
