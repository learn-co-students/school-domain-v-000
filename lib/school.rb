require "pry"

class School 
  attr_accessor :grade, :roster
  attr_reader :name
  ROSTERS = {}
  
  def initialize(name)
    @name = name
    ROSTERS.clear
  end

  def roster 
    ROSTERS
  end

  def add_student(name, grade)
    #ROSTERS[grade] ||= ROSTERS[grade] = [ ]
    if ROSTERS[grade] == nil
      ROSTERS[grade] = [ ]
      ROSTERS[grade] << name
    elsif ROSTERS[grade] != nil && ROSTERS[grade].include?(name) == false
      ROSTERS[grade] << name
    end
  end
  
  def grade(grade)
    ROSTERS[grade]
  end
  
  def sort
    ROSTERS.each do |key|
      ROSTERS[key[0]].sort!
    end
  end
end