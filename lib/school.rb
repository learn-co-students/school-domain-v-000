# code here!

class School 
  
  def initialize(name)
    @name = name
    @roster = {}
  end 
  
  def name 
    @name 
  end 
  
  def roster
    @roster
  end 
  
  def add_student(student_name, grade) 
    if(@roster.include? grade)
      @roster[grade] << student_name
    else 
      @roster[grade] = []
      @roster[grade] << student_name
    end 
  end 
  
  def grade(grade)
    @roster[grade]
  end 
  
  def sort 
    @newR={}
   @roster.map{|gr, name|
     @newR[gr] = name.sort
     }
   @newR
  end 
  
  
end 