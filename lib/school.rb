require "pry"

class School
  attr_reader :school_name
  ROSTER = {}

  def initialize(school_name)
    @school_name = school_name
  end

  def roster
    ROSTER
  end

  def add_student(name,grade)
      ROSTER[grade]||=[]
      ROSTER[grade]<<name
  end

end
