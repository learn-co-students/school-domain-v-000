require "pry"
class School
  attr_accessor :name, :roster, :student, :grade

def initialize(name)
  @name = name
  @roster = {}
end

def add_student(student, grade)
  #binding.pry
  if @roster.keys.include?(grade)
    @roster[grade] << student
  else
    @roster[grade] = []
    @roster[grade] << student
  end

  def grade(grades)
    @roster[grades]
  end

  def sort
    sorted_roster = {}
    roster.each do |grades, students|
      sorted_roster[grades] = students.sort
    end
    sorted_roster
  end
end


end
