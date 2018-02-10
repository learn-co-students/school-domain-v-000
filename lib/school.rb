# code here!
class School
  attr_reader :name, :roster

  def initialize(name)
    @name = name
    @roster = {}
  end

  def add_student(student, grade)  # roster = {10 =>["AC Slater"]}
    @roster[grade] = [] if @roster[grade].nil?
    @roster[grade] << student
  end

  def grade(grade)
    @roster[grade]
  end

  def sort
    @roster.each {|grade, students| students.sort!}
  end
end
