# code here!
class School
  attr_accessor :roster

  def initialize(school)
    @roster = {}
  end

  def add_student(student, grade)
    roster[grade] ||= []
    roster[grade] << student
  end

  def grade(num)
    roster[num]
  end

  def sort
    @roster.each do |grade, students|
      students.sort!
    end
  end
end
