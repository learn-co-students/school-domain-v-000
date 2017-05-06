# code here!
class School
  attr_accessor :name, :roster

  def initialize(name)
    @name = name
    @roster = {}
  end
  def add_student(student, grade)
    roster[grade] ||= []
    roster[grade] << student
  end
  def grade(grade)
    return roster[grade]
  end
  def sort
    roster_sorted ={}
    roster.each do |grade, student|
      roster_sorted[grade] = student.sort
    end
    roster_sorted
  end

end
