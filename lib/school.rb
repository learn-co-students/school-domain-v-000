# code here!
class School
  attr_accessor :name, :roster

  def initialize(name)
    @name = name
    @roster = {}
  end

  def add_student(student, grade)
    @roster[grade] ||= [] # if @rocster[grade] exist, won't set it to []
    @roster[grade] << student
  end

  def grade(grade)
    @roster[grade]
  end

  def sort
    self.roster.each {|grade, students| @roster[grade] = students.sort{|x, y| x <=> y}}
    @roster
  end
end
