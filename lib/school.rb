require 'pry'
class School
  attr_accessor :name, :roster, :student_name, :student_grade

  def initialize(name)
    @name = name
    @roster = {}
  end

  def add_student(student_name, student_grade)
    roster[student_grade] ||= []
    roster[student_grade] << student_name

  end

  def grade(student_grade)
    roster[student_grade]
  end

  def sort
    roster.each {|k, v| "#{k} => #{v.sort!}" }
    # k is student_grade, v is student_name
  end

end
