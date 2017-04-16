# code here!
class School
  attr_reader :roster

  def initialize(name)
    @name = name
    @roster = {}
  end

  def add_student(name, grade)
    roster[grade] ||= []
    roster[grade] << name
  end

  def grade(num)
    roster[num]
  end

  def sort
    roster.map do |grade, students|
      students.sort!
    end
    roster
  end
end
