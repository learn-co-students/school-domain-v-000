# code here!
class School
  attr_accessor :roster
  attr_reader :name
  
  def initialize(name)
    @name = name
    roster = {}
    @roster = roster
  end

  def add_student(name, grade)
    
      if roster.include? grade #&& !roster.include?(name)
        roster[grade] << name
      else 
        roster[grade] = []
        roster[grade] << name
      end

    roster

  end

  def grade(grade)
    roster[grade]
  end

  def sort
    new_h = {}
    roster.collect do |grade, name|
      new_h[grade] = name.sort 
    end
    new_h
  end

end