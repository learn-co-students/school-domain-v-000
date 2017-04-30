# code here!
class School
   attr_accessor :name , :grade
    attr_reader :roster
  
     def initialize(roster)   
         @roster = roster
         roster.clear
     end
     
  def add_student(name,grade)
      
       @roster[grade] << name
     
   end
   
   
 
 
 
    
    
    
    
    
    
    
    
    
    
    
    
    
end
