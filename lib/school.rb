class School
GRADES = []
NAMES = []
  def initialize(name)
    @name = name
    @roster = Hash.new
  end

  attr_accessor :name, :roster

  def add_student(name, grade)
    if roster[grade] == nil
      roster[grade]=Array.new<<name
    else
      roster[grade]<<name
    end
  end

  def grade(grade)
    roster[grade]
  end
  def sort
    roster.each do |key,value|
      value = value.sort!
    end
    roster
  end
end
