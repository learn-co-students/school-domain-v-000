# code here!
class School

  attr_reader :name, :roster

  def initialize(name)
    @name = name
    @roster = {}
  end

  def add_student(name, grade)
    if !roster.include?(grade)
      roster[grade] = []
    end
      roster[grade] << name
  end

  def grade(grade)
    roster[grade]
  end

  def sort
    roster.each do |grade, student|
      student.sort!
    end
      roster
  end
end
