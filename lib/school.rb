# code here!
class School
  attr_accessor 
  attr_reader :roster
  ROSTER = {
    # grade_level_one: ["Jimmy","Johny","Timmy"]
  }
  
  def initialize(name)
    @name = name
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
end