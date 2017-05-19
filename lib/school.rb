# code here!
class School
  attr_reader :roster

  def initialize(name)
    @name = name
    @roster = {}
  end

  def add_student(student_name, grade)
    @roster[grade] = [] if !@roster.include? grade
    @roster[grade] << student_name # split to three lines to avoid duplication
    @roster
  end

  def grade(grade)
    @roster.include?(grade) ? @roster[grade] : {}
  end

  def sort
    @roster.sort.collect{ |item| [item[0], item[1].sort]}.to_h
  end
end
