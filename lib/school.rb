# code here!
class School
  attr_accessor :name, :roster, :student, :grade

  def initialize(name)
    @name = name
    @roster = {}
  end

  def add_student(student, grade)
    roster[grade] ||= []
    roster[grade] << student
  end

  def grade(grade)
    roster[grade]
  end

  def sort
    sorted_hash = {}
    roster.each do |grade, student|
      sorted_hash[grade] = student.sort
    end
    sorted_hash
  end

end

school = School.new("Test School")
puts school.name
puts school.roster