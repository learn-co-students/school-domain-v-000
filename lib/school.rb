# code here!

class School 
  attr_accessor :school_name, :roster 

    
  def initialize(school_name, roster = {})
    @school_name = school_name
    @roster = roster 
  end 
end 


end #ends class 

#school = School.new("Bayside High School")
#school.roster
#school.add_student("Zach Morris", 9)
#school.roster