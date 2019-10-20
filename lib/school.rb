class School
  attr_accessor :school_name, :roster

  def initialize(school_name)
    @school_name = school_name
    @roster = Hash.new
  end

  def add_student(student_name, student_grade)
    roster[student_grade] ||= []
    roster[student_grade] << student_name
  end

  def grade(student_grade)
    roster[student_grade]
  end

  def sort
    roster.collect{|k,v| v.sort!}
    roster
  end

end
