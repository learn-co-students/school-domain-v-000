# code here!

class School
  attr_accessor :roster
  attr_reader :name

  def initialize(name)
    @name = name
    @roster = {}
  end

  def add_student(student, grade)
    if self.roster.has_key?(grade)
      self.roster[grade] << student
    else
      self.roster[grade] = [student]
    end
  end

  def grade(grade)
    self.roster[grade]
  end

  def sort
    self.roster.each do |key, value|
      self.roster[key] = value.sort
    end
    
  end
end