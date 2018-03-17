require 'pry'
class School
  attr_accessor :name, :roster

  def initialize(name)
    @name = name
    @roster = {}
  end

  def add_student(name, grade)
    if(@roster[grade] == nil)
      @roster[grade] = []
    end
    @roster[grade] << name
  end

  def grade(grade)
    return roster[grade]
  end

  def sort
    @roster.each do |grade, students|
      # binding.pry
      @roster[grade] = students.sort 
      # binding.pry
    end
  end

end