class School
  attr_accessor :student, :grade
  attr_reader :school, :roster

  def initialize(school)
    @school=school
    @roster=Hash.new
  end

  def add_student(student, grade)
    roster[grade] ||= []
    roster[grade] << student
  end

  def grade(grade)
    roster[grade]
  end

  def sort
    roster.each do |grade, students|
      roster[grade]=students.sort
    end
    Hash[roster.sort]
  end

end
