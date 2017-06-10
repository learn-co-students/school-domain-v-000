# code here!
class School
  attr_accessor :roster, :name
  def initialize(name)
    @name = name
    @roster = {}
  end


  def add_student(student, grade)
    @roster[grade] ||= []
    @roster[grade] << student
  end

  def grade(grade)
    @roster[grade]
  end

  def sort
    in_order = {}
    @roster.each do |grade, students|
      in_order[grade] = students.sort
    end
    in_order
  end
end
