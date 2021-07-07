# code here!
class School
  attr_accessor :name
  
  def initialize(roster)
    roster = {}
    @roster = roster
  end
  
  def roster
    @roster
  end
  
  def add_student(name, grade)
    roster[grade] = [] unless roster.include?(grade)
    roster[grade] << "#{name}"
  end
  
  def grade(num)
    roster[num]
  end
  
  def sort
    roster.each do |grade, names|
      names.sort!
    end
  end
  
end