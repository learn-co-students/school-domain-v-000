# code here!
class School
  attr_reader :roster
  
  def initialize(roster)
    @roster = {}
  end
  
  def add_student(name, grade)
    @roster[grade] = [] unless @roster.key?(grade)
    @roster[grade] << name
  end
  
  def grade(grade_input)
    @roster[grade_input]
  end
  
  def sort
    @roster.each do |grade|
      grade[1].sort!
    end
  end
end
