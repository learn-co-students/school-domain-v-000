# code here!
class School

  attr_reader :roster, :add_student

  def initialize(roster)
    @roster = {}
  end

  def add_student(name, grade)
    @roster[grade] = []
    if grade == @roster[grade]
      @roster[grade] = []
    else
      @roster[grade] << name
    end
  end





end
