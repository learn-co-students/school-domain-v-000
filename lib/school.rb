require 'pry'

class School

  def initialize(name)
    @name = name
    @roster = {}
  end

  def roster
    @roster
  end

  def add_student(name,grade)
      roster[grade] ||=[]
      roster[grade] << name
  end

  def grade(grade)
    return @roster[grade]
  end

  def sort
    new_hash = Hash.new
    roster.each do |key,value|
      #binding.pry
      new_hash[key] = value.sort
    end
    new_hash
  end


end