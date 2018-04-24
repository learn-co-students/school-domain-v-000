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
    return roster[grade]
  end

  def sort
    sorted = {}
    roster.each do |grade, name|
      sorted[grade] = name.sort
    end
    sorted
  end

end
