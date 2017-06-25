# code here!
require "pry"
class School

  # attr_accessor
  attr_reader :school_name, :roster

  def initialize(name)
    @school_name = name
    @roster = {}
  end

  def add_student(name, grade_level)
    # binding.pry
    @roster[grade_level].is_a?(Array) ? @roster[grade_level] << name : @roster[grade_level] = [name]

  end

  def grade(grade_level)

    @roster[grade_level]

  end

  def sort

    sorted_roster = {}

    @roster.each do |grade_level, names|
      sorted_roster[grade_level] = names.sort
    end
    sorted_roster
  end
end
