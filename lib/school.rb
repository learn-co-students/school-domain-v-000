# code here!

class School 
  attr_accessor :school_name, :roster, :name, :grade

    
  def initialize(school_name, roster = {})
    @school_name = school_name
    @roster = roster 
  end 

  
  def add_student(name, grade)
      roster[grade]= []
      roster[grade] << name 
  end 
  

end #ends class 


#school = School.new("Bayside High School")
#school.roster
#school.add_student("Zach Morris", 9)
#school.roster