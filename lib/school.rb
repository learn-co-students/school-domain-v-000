class School
  attr_accessor :student, :roster, :grade

  # roster =>{
  #   9: [students],
  #   10: [students],
  #   11: [students],
  #   12: [students]



  def initialize(student)
    @student = student
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
    sorted = {}
    roster.each do |grade, students|
      sorted[grade] = students.sort
    end
    sorted
  end
end
