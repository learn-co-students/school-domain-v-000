class School
  attr_accessor :school_name, :roster

  def initialize(school_name)
    @school_name = school_name
    @roster = {}
  end

  def add_student(student, grade_level)
    roster[grade_level] ||= []
    roster[grade_level] << student
  end

  def grade(student_grade_level)
    roster[student_grade_level]
  end

  def sort
    alph_order = {}
    roster.each{|grade, students| alph_order[grade] = students.sort}
    alph_order
  end
end
