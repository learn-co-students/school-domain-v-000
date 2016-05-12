# code here!
class School
  attr_accessor :roster
  attr_reader :name

  ROSTER = {}

  def initialize(name)
    @name = name
    @roster = ROSTER
  end

  def add_student(name, grade)
    
      if roster.include? grade && !(roster.include?)name
        roster[grade] << name
      else 
        roster[grade] = []
        roster[grade] << name
      end

    roster

  end



end