# code here!
require 'pry'
class School
  def initialize(name)
    @name = name
    @roster = {}
  end

  def roster
    @roster
  end

  def add_student(name, grade)
    if @roster[grade] == nil
      @roster[grade] = []
      @roster[grade] << name
    else
      @roster[grade] << name
    end
  end

  def grade(num)
    @roster[num]
  end

  def sort
    @roster.each do |key, value|
      @roster[key] = value.sort
    end
  end
end
