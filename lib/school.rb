# code here!
class School

  attr_accessor :name, :roster

  def initialize(name)
    @name = name
    @roster = {}
  end

  def add_student(name, grade)
    roster[grade] ||= []
    roster[grade] << name
  end

  def grade(grade)
    roster[grade]
  end

  def sort
    new_roster = {}
    roster.each do |grade, names|
      new_roster[grade] = names.sort
    end
    new_roster
  end
end
