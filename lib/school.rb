# code here!
class School
  
  def initialize(name)
    @name = name
    @roster = {}
  end 

  
  def roster
    @roster 
  end
  
  
  attr_reader :name 

  def add_student(name,grade)
    (@roster[grade] ||= []) << name
    
  end 

  def grade(grade) 
    @roster[grade] 
  end 

  def sort 
    @roster.map {|grade,name|
       @roster[grade] = name.sort
    }
    @roster 
  end 

  
end