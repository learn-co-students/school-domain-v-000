# code here!
class School
  attr_accessor :roster

  def initialize(name)
    @name = name
    @roster = {}
  end

  def add_student(student_name, grade)
    if @roster[grade].nil?
      @roster[grade] = [student_name]
    else
      @roster[grade] << student_name
    end
  end

  def grade(grade)
    @roster[grade]
  end

  def sort
    @roster.sort
    @roster.each do |grade, students|
      students.sort!
    end
  end
end