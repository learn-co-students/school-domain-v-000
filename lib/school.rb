# create a new class School
class School 
  attr_accessor :name, :roster
  
  def initialize(name)
    @name = name
    @roster = {}
  end 
  
  def add_student(student_name, grade)
    unless @roster.keys.include?(grade)
      @roster[grade] = []
    end
    
    unless @roster[grade].include?(student_name)
      @roster[grade] << student_name
    end
  end
  
  def grade(grade_number)
    @roster[grade_number]
  end
  
  def sort 
    sorted = @roster.each_value(&:sort!)
  end
  
end