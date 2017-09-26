# code here!
require 'pry'

class School

  attr_accessor :name, :roster

  def initialize(name)
    @name = name
    @roster = { }
  end

  def add_student(name, grade)
    if @roster[grade] == nil
      @roster[grade] = [ ]
      @roster[grade] << name
    else
      @roster[grade] << name
    end
  end

  def grade(num)
    @roster[num]
  end

  def sort
    new_hash = { }
    @roster.each do | key, value |
      new_hash[key] = value.sort
    end
    new_hash
  end

end
