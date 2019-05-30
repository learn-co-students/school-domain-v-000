require 'pry'

class School
  def initialize(name, roster = {})
    @name = name
    @roster = roster
  end

  def roster
    @roster
  end

  def add_student(student, grade)
    @student = student
    @grade = grade

    @roster[@grade] ||= []
    @roster[@grade] << @student

  end

  def grade(grade)
    @roster[grade]
  end

  def sort
    @roster.each do |grade, students|
      sorted_grade = students.sort
      @roster[grade].replace(sorted_grade)
    end
    @roster
  end
  
end
