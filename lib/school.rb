# code here!
class School
  attr_reader :roster, :name

  def initialize(name)
    @name = name
    @roster = {}
  end

  def add_student(students_name, grade)
    roster[grade] ||= []
    roster[grade] << students_name
  end

  def grade(grade)
    roster[grade]
  end

  def sort
    roster.each do |grade, students|
      roster[grade] = students.sort
    end
  end
end
