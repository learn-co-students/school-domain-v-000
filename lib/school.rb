# code here!
class School

  attr_accessor :roster, :name, :grade

  def initialize(roster)
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
    sort = roster.each do |grade, name|
      name.sort!
    end
  end

end
