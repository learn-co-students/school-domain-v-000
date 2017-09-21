# code here!
class School

  attr_accessor :name
  attr_reader :roster

  def initialize(name)
    @name = name
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
  @roster.each do |grade, student|
    student.sort!
  end
end


end
