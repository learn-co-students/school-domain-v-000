# code here!

class School
  attr_accessor :name, :roster

  def initialize(name)
    @name = name
    @roster = {}
  end

  def add_student(student_name, grade)
    roster[grade] ||= [] # if roster[grade] is falsey (false or nil), then evaluate [] and set roster[grade] to the result
    roster[grade] << student_name
  end

  def grade(grade)
     roster[grade]
  end

  def sort
    roster.each {|grade, student_name| student_name.sort! }
  end

end
