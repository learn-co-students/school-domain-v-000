# code here!
class School
  attr_accessor :name
  
  def initialize(roster)
    @roster = {}
  end
  
  def roster=(roster)
    @roster = roster
  end
  
  def roster
    @roster
  end
  
  def add_student(student, grade)
    @roster[grade] ||= []
    @roster[grade] << student
  end
  
  def grade(g)
    @roster[g]
  end
  
  def sort
    @roster.each{|grade, students| students.sort!}
  end
end