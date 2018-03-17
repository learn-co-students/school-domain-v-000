# code here!
class School

  attr_accessor :student_name, :grade, :name, :roster

  def initialize(name)
    @name = name
    @roster = {}
  end

  def add_student(student_name, grade)
    @grade = grade
    @student_name = student_name
    @roster[@grade] ||= []
    @roster[@grade] << @student_name
  end

  def grade(grade)
    @grade = grade
    @roster[@grade]
  end

  def sort
    @roster.each do |grade, name|
      @roster[grade] = name.sort
    end
  end
  @roster
end
