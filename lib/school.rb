class School
  attr_accessor :roster, :grade, :student_name, :add_student, :sort
  attr_reader :name
 
  def initialize(name)
    @roster = {}
    @name = name
  end 
  
  def add_student(student_name, grade)
    @roster[grade] ||= [] 
    @roster[grade] << student_name
  end
  
  def grade(grade)
    @roster[grade]
  end
  
  def sort
    new_roster = @roster[grade][student_name].values.sort
    new_roster
  end
end 