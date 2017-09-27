require 'pry'
class School

  def initialize(name, roster = {})
    @name = name
    @roster = roster
  end

def name
  @name
end

  def roster
    @roster
  end

  attr_accessor :student_name, :grade

  def add_student(student_name, grade)
    @student_name = student_name
    @grade = grade
    @roster[@grade] = []
    @roster[@grade] << @student_name
  end

  def grade(grade)
    puts "#{@roster[@grade]}"
  end
end
