# code here!
class School
  attr_accessor :student_name, :student_grade
  attr_reader :roster, :name

  def initialize(school_name)
    @school_name = school_name
    @roster = {}
  end

  def add_student(student_name, grade)
    @student_name = student_name
    @student_grade = student_grade
    @roster 
  end
end
