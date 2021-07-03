# code here!
class School
  attr_accessor :roster

  def initialize(name)
    @name = name
    @roster = {}
  end

  def add_student(name, grade)
    if self.roster.keys.include?(grade) == false
      self.roster[grade] = []
      self.roster[grade] << name
    else
      self.roster[grade] << name
    end
  end

  def grade(i)
    @roster[i]
  end

  def sort
    sorted = {}
    roster.each do |grade, students|
      sorted[grade] = students.sort
    end
    sorted
  end
end
