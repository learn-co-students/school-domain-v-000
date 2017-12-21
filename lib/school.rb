# code here!
class School
  attr_accessor :name, :roster
  attr_reader :grade, :student

  def initialize(name)
    @name = name
    @roster = {}
  end

  def add_student(student, grade)
    @roster[grade] ||= []
    @roster[grade] << student
  end

  def grade(grade_number)
    @roster[grade_number]
  end

  def sort
    sorted = {}
    @roster.each {|grade, student| sorted[grade] = student.sort}
    sorted
  end

end
