# code here!
class School
  attr_accessor :roster, :add_student, :sort
  
  def initialize(name)
    @roster = {}
  end
  
  def name
    @name = name
  end

    
  def add_student(student_name, grade) 
    roster[grade] ||= []
    roster[grade] << student_name
  end

  def grade(grade)
    roster[grade]
  end

  def sort(student_name) 
     roster[student_name].sort
  end

end


