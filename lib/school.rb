# code here!
class School
  def initialize(name)
    @name = name
  end
  
  def roster
    @roster = {}
  end


  
 
  def add_student(student, grade)
    @student = student
    @grade = grade
    @roster[grade] = []
    @roster[grade] << student
    
    
   
  end
  
end