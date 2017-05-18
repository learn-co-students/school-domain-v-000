# code here!
class School
attr_accessor :student, :class, :roster

  def initialize(name)
    @schoolname = name
    @roster = {}
  end

  def add_student(student, grade)
    if @roster[grade]
      @roster[grade] << student
    else
      @roster[grade] = []
      @roster[grade] << student
    end
  end

  def grade(grade)
    @roster[grade]
  end

  def sort
    @roster.collect do |grade, students|
      students.sort!
    end
    @roster
  end
end

