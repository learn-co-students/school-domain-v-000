# code here!
class School
  attr_reader :roster

  def initialize(school_name)
    @school_name = school_name
    @roster = {}
  end

  def add_student(student_name, student_grade)
    if @roster.has_key?(student_grade)
      @roster[student_grade] << student_name
    else
      @roster[student_grade] = []
      @roster[student_grade] << student_name
    end
  end

  def grade(grade_num)
    @roster[grade_num]
  end

  def sort
    @roster.map do |grade, student_array|
      student_array.sort!
    end
    @roster
  end

end
