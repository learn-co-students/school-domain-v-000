# code here!
class School    #referred to as the model 

  def initialize(name)
    @name = name 
    @roster = {}  # hash will contain keys of grade levels; value of ea key will be student name array
  end   
  
  def roster 
    @roster 
  end   
  
  def add_student(name, grade)
    if @roster[grade] != nil 
       @roster[grade] << name
    else 
       @roster[grade] = [name] 
    end    
  end      
  
  def grade(grade)
    @roster[grade]
  end   
  
  def sort
    @roster.each do |key, value|
      value.sort!
    end   
  end   
  

end   