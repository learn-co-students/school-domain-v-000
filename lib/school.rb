class School
  attr_reader :school_name, :roster

  def initialize(school_name)
    @school_name = school_name
    @roster = {}
  end

  def add_student(student_name, grade)
    roster[grade] ||= []
    roster[grade] << student_name
  end

  def grade(student_grade)
    roster[student_grade]
  end

  def sort
    sorted_grade = {}
    roster.each do |student_grade, student_name|
      sorted_grade[student_grade] = student_name.sort
    end
    sorted_grade
  end

end
