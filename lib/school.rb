class School
  attr_accessor :roster

  def initialize(school_name)
    @school_name = school_name
    @roster = {}

  end

  def add_student(student, grade)

    roster[grade] ||= []
    roster[grade] << student

  end

  def grade(grade)
    roster[grade]
  end

  def sort
    student_hash = {}
    roster.each do |grade, student|
      student_hash[grade] = student.sort
    end
    student_hash
  end

end 








# code here!