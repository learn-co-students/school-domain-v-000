# code here!
require 'pry'
class School
  attr_accessor :roster
  def initialize(school_name)
    @school_name = school_name
    @roster = {}
  end

  def add_student(student_name, grade)
    roster[grade] ||= []
    roster[grade] << student_name
  end

  def grade(student_name)
    roster[student_name]
  end

  def sort
    roster.each do |grade, names|
      names.sort!
    end
  end
end
