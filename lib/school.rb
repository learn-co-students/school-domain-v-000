# code here!
class School
  attr_accessor :roster, :name

  def initialize(name)
    @roster = {}
    @name = name
  end

  def add_student(name, grade)
    roster[grade] ||= []
    roster[grade] << name
  end

  def grade(grade)
    roster[grade]
  end

  def sort
    roster.each do |grade, name|
      roster[grade] = name.sort!
    end
  end
end
