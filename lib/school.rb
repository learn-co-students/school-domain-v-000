# code here!
class School
 attr_accessor :roster, :name

  def initialize(roster={}, name)
    @name = name
    @roster = roster
  end

  def add_student(student, grade)
    if roster[grade] == nil
    roster[grade]= []
  end
    roster[grade] << student
  end

  def grade(grade)
    roster[grade]
  end

  def sort
    roster.collect do |grade, name|
      roster[grade] = name.sort
    end
    roster
      end

end
