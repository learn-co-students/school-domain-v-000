class School
  attr_reader :name, :roster

  def initialize(school)
    @name = school
    @roster = {}
  end

  def add_student(student, input_grade)
    roster[input_grade] ||= []
    roster[input_grade] << student
  end

  def grade(grade)
    roster[grade]
  end

  def sort
    roster.each do |grade, students|
      students.sort!
    end
  end

end
