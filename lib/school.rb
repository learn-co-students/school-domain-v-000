require 'pry'
# code here!

class School
  attr_accessor :roster

  def initialize(roster)
    @roster = {}
  end
  
  def add_student(name, grade)
    if @roster.include?(grade)
      @roster[grade] << name
    else
      @roster[grade] = []
      @roster[grade] << name
    end
  end

  def grade(grade)
    return @roster[grade]    
  end
  
  def sort
    @roster.each do |key, values|
# binding.pry
      values.sort!
    end 
  end

end