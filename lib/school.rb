# code here!
class School

  attr_accessor :name, :roster

  def initialize(name)
    @name = name
    @roster = {}
  end

  def add_student(student, grade)
    roster[grade] ||= []
    roster[grade] << student
  end

  def grade(stu_grade)
    roster[stu_grade]
  end

  def sort
    sorted_list = {}
    roster.each do |grade, students|
      sorted_list[grade] = students.sort
    end
    sorted_list
  end
end
