class School
  attr_accessor :roster, :name
  
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
    alpha_order = {}
    roster.each do |grade, students|
      alpha_order[grade] = students.sort
    end
    alpha_order
  end
    
end
