# code here!

class School
  
  attr_accessor :name, :roster
  
  def initialize(name)
    @name = name
    @roster = {}
  end
  
  def add_student(name, grade)
    if @roster.keys.include?(grade)
      @roster[grade] << name
    else
      @roster[grade] = []
      @roster[grade] << name
    end
  end
  
  def grade(grade)
    @roster[grade]
  end
  
  def sort 
    @roster.each do |grade, students|
      students.sort!
    end
    @roster
  end
  
#  def sort
#    sorted = {}
#    roster.each do |grade, students|
#      sorted[grade] = students.sort
#    end
#    sorted
#  end
  
end