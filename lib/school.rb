# code here!
class School
  attr_accessor
  attr_reader :school_name, :roster, :name, :grade

  def initialize(school_name)
    @school_name = school_name
    @roster = {}
  end

  def add_student(student_name, grade)
    if @roster[grade]
      @roster[grade] << student_name
    else
      @roster[grade] = []
      @roster[grade] << student_name
    end
  end

  def grade(grade)
    @grade = grade
    @roster[grade] ||= [student_name]
  end

  def sort
    students = {}
    @roster.each do |grade, student|
      students[grade] = student.sort
    end
    students
  end

end
