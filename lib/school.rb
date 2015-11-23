# code here!
class School
  attr_reader :roster

  def initialize(school_name)
    @school_name = school_name
    @roster = {}
  end

  def add_student(student_name, grade)
    @roster[grade] ||= []
    @roster[grade] << student_name
  end

  def grade(grade_num)
    @roster[grade_num]
  end

  def sort
    @roster.each do |grade, name|
      name.sort!
    end
  end
end