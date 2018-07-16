# code here!

class School
  attr_accessor :roster, :grade
  attr_reader :name, :student_name
  
  def initialize(name)
    @name = name
    @roster = {}
  end 
  
  def add_student(student_name, grade)
    if roster.include?(grade)
      roster[grade] << student_name
    else
    roster[grade] = []
    roster[grade] << student_name
  end 
  end
  def grade(grade)
    return roster[grade]
  end 
  
  def sort
    roster.map do |grades, students|
      students.sort!
      return roster
    end 
end 
end 