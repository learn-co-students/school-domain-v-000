require 'pry'

class School
  attr_reader :name, :grade, :roster

  def initialize(name)
    @name = name
    @roster = {}
  end

  def add_student(name, grade)
    roster.has_key?(grade) ? @roster[grade] << name : @roster[grade] ||= [] << name
  end

  def grade(school_grade)
    @roster[school_grade]
  end

  def sort
   @roster.each do |grade, students|
     @roster[grade] = students.sort {|a, b| a[0]<=>b[0]}
   end
  end
binding.pry
end
