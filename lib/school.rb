require 'pry'

class School
  attr_reader :school_name, :roster

  def initialize(name)
    @school_name = name
    @roster = {}
  end

  def add_student(name, grade)
    if roster.include?(grade) == false
      roster[grade] = []
    end
    roster[grade] << name
  end

  def grade(grade)
    roster[grade]
  end

  def sort
    sorted_keys_roster = roster.sort
    sorted_roster = {}
    sorted_keys_roster.each do |grade, names|
      sorted_names = names.sort
      sorted_roster[grade] = []
      sorted_names.each do |name|
        sorted_roster[grade] << name
      end
    end
    sorted_roster
  end

end
