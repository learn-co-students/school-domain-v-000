# code here!
class School
  attr_reader :roster
  
  def initialize(name)
    @name = name
    @roster = {}
  end
  
  def add_student(name, grade)
    if !@roster.has_key?(grade)
      @roster[grade] = []
    end
    @roster[grade] << name
  end
  
  def grade(grade_num)
    @roster[grade_num]
  end
  
  def sort
    @roster.each do |grade, students|
      students.sort!
    end
    @roster
  end 
end