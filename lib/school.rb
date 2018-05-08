require 'pry'

class School
  attr_reader :name, :roster

  def initialize(name)
    @name = name
    @roster = {}
  end

  def add_student(student, grade)
    if self.roster.include?(grade) == false
      self.roster[grade] = []
      self.roster[grade] << student
    else
      self.roster[grade] << student
    end
  end

  def grade(grade)
    self.roster[grade]
  end

  def sort
    sorted_roster = {}
    self.roster.each do |key, value|
      sorted_roster[key] = value.sort
    end
    sorted_roster.sort.to_h
  end

end
