class School
  
  attr_accessor :name, :roster
  
  
  def initialize(name)
    @name = name
    @roster = {}
  end
  
  def add_student(student_name, grade)
    roster[grade] ||= []
    roster[grade] << student_name
  end
  
  def grade(grade)
    roster[grade]
  end
  
  def sort
    grade_roster = {}
    roster.each do | grade, students |
      grade_roster[grade] = students.sort
    end  
  end
  
end