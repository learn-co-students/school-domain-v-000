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
    alphabetical = {}
    roster.each {|grade, students| alphabetical[grade] = students.sort}
    alphabetical
  end

end
