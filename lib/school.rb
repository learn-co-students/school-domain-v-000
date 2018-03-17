
class School

  attr_reader :name, :roster

  def initialize(school_name)
    @name = school_name
    @roster = {}
  end

  def add_student(student_name, student_grade)
    roster[student_grade] ||= [] #if @roster[student_grade] == nil
    roster[student_grade] << student_name
  end

  def grade(grade)
    roster[grade]
  end

  def sort
    roster.each do |student_grade, student_name|
      roster[student_grade].sort!
    end
  end

end