require 'pry'

class School
  attr_accessor :name, :roster

  def initialize(school_name)
    @school_name = school_name
    @roster = {}
  end

  def school_name
    @school_name
  end

  def add_student(name, grade)
    @roster[grade] ||= []
    @roster[grade] << name
  end

  def grade(grade)
    return @roster[grade]
  end

  def sort
    abc = {}
    @roster.each do |grade, name|
      abc[grade] = name.sort
    end
    abc
  end
end
