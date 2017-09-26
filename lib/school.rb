# code here!
class School
  attr_accessor :grade, :student
  attr_reader :roster

  def initialize(name)
    @roster = {}
    @name = name
  end

  def add_student(name, grade)
    if roster[grade] == nil
      roster[grade] = []
      roster[grade] << name
    else
      roster[grade] << name
    end
  end

  def grade(grade)
    roster[grade]
  end

  def sort
    list = {}
    roster.each do |grade, name|
      list[grade] = name.sort
    end
    list
  end
end
