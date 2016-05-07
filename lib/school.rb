# code here!
class School

  attr_reader :roster, :add_student

  def initialize(roster)
    @roster = {}
  end

  def add_student(name, grade)
    roster[grade] ||= []
    roster[grade] << name
  end

end
