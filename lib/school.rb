require 'pry'

class School

  def initialize(name)
    @name = name
    @roster = {}
  end

  attr_reader :name

  def roster
    @roster
  end

  def add_student(student, grade)
    @roster[grade] = [] unless @roster.keys.include?(grade)
    @roster[grade] << student
  end

  def grade(grade)
    @roster[grade]
  end

  def sort
    sorted_roster = {}
    @roster.each do |key, value|
      sorted_roster[key] = value.sort
    end
    Hash[sorted_roster.sort]
  end

end