# code here!
class School
  attr_accessor :roster
  attr_reader :name

  def initialize(name)
    @name=name
    @roster={}
  end

  def add_student(student_name, student_grade)
    if @roster.include?(student_grade)
      @roster[student_grade] << student_name
    else
      @roster[student_grade] = []
      @roster[student_grade] << student_name
    end
  end

  def grade(grade)
    @roster[grade]
  end

  def sort
    sorted={}
    @roster.each do |grades, students|
      sorted[grades]= students.sort
    end
    sorted
  end

end
