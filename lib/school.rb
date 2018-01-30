# code here!
class School
  attr_accessor :name
  attr_writer :roster,:grade
  
  ROSTER = {}
  
  def initialize(name)
    @name = name
    @roster = roster
  end
  
  def add_student=(student_name,grade)
    if ROSTER[grade] == nil
      ROSTER[grade] = []
      ROSTER[grade] << student_name
    else 
      ROSTER[grade] << student_name
    end
  end
  
  def roster(roster)
    @roster = roster
    roster = ROSTER
  end
  
  def grade(grade)
    @grade = grade
    ROSTER[grade]
  end
end