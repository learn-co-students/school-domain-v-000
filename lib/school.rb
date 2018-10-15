# code here!
class School
  
  attr_reader :grade
  
  ROSTER = {} 
  
  def initialize(name)
    @name = name 
  end 
  
  def roster 
    ROSTER
  end
  
  def add_student(name, grade)
    if ROSTER.include?(grade)
      ROSTER[grade] << name unless ROSTER[grade].include?(name)
    else 
      ROSTER[grade] = []
      ROSTER[grade] << name
    end
  end
  
  def grade(grade)
    ROSTER[grade].sort!
  end
  
  def sort
    ROSTER.each do |k,v|
      v.sort! 
    end
    ROSTER
  end
  
end