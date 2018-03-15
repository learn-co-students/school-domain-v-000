class School
  attr_reader :name
  attr_accessor :roster, :add_student
  
  
  def initialize(name)
    @name 
    @roster = {}
  end
  
  def add_student(student, grade)
   @roster[grade] ||= []  
    @roster[grade] << student
  end
  
  def grade(grade)
   @roster[grade]
  end
  
  def sort
    @roster.map do |grade, students|
      students.sort!
    end
    @roster
  end
  
end