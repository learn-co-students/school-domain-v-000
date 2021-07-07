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
    if !@roster.include?(@grade)
      @roster[@grade] = []
      @roster[@grade] << @student_name
    else
      @roster[@grade] << @student_name
    end
  end

  def grade(grade)
    @grade = grade
    @roster[@grade]
  end

  def sort
    sorted_roster = {}
    @roster.collect do |grade, students|
      sorted_roster[grade] = students.sort
    end
    sorted_roster
  end
end
