
class School 
  
  def initialize(name)
    @name = name
    @roster = {}
  end 
  
  def roster
    @roster
  end
  


  def add_student(stud_name, grade)
    if roster[grade]
      roster[grade] << stud_name
    else
      roster[grade] = []
      roster[grade] << stud_name
    end 
  end 


  def grade(grade_level)
    if roster[grade_level]
      roster[grade_level]
    end 
  end 
  
  def sort
    roster.each do |grade_level, stud_array|
      stud_array.sort!
    end 
      
  end 
  
end
