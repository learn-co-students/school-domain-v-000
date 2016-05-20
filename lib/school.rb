# code here!

class School

  attr_accessor :roster

  def initialize(name) 
    @name = name 
    @roster = {} 
  end

  def add_student(name, grade)
    if !roster.keys.include?(grade)
      roster[grade] = [] 
      roster[grade] << name
    else
      roster[grade] << name 
    end
  end

  def grade(grade)
    roster[grade]
  end


  def sort
    roster.each do |key,values|
      values.sort!
    end
    roster.sort.to_h
  end





end
