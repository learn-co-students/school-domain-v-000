# code here!
class School

  attr_reader :roster

  def initialize(roster)
    @roster = {}
  end

  def add_student(name, grade)
    @roster[grade] = [] unless roster.include? grade
    @roster[grade] << name
  end

  def grade(grade)
    @roster[grade]
  end

  def sort
 sorted = {}
    @roster.each do |grade, students|
      sorted[grade] = students.sort
    end
    sorted
  end
end
