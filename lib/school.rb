# code here!

class School
  attr_accessor :name, :roster

  def initialize(name)
    @name = name
    @roster = {}
  end

  def add_student(student_name, grade)
    roster[grade] ||= []
    roster[grade] << student_name
  end

  def grade(grade)
    roster[grade]
  end

  def sort
    sorted_by_name = {}
    roster.each do |grade, student_name|
      sorted_by_name[grade] = student_name.sort
    end
    sorted_by_name
  end
end
