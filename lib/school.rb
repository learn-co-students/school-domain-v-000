# code here!
class School
  attr_accessor :School, :roster
  
  def initialize(roster)
   @roster = {}
   
  end
  
  def add_student(name, grade)
    if roster[grade]==nil
      roster[grade] = []
    end
      roster[grade] << name
  end
  
  def grade(grade_level)
    roster[grade_level]
  end
  
  def sort
    roster.each do |key, value|
      value.sort!
    end
  end
end