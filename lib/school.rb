# code here!

class School 
  attr_accessor :school_name, :name, :grade, :roster 

  def initialize(school_name, roster = {})
    @school_name = school_name
    @roster = {}
  end 

  
  def add_student(name, grade)
      ( @roster[grade] ||= [] ) << name 
    end 
  
  def grade(grade)
   @roster.each do |grade, name|
    name 
  end 
  end 
    
end #ends class 



#school = School.new("Bayside High School")
#school.roster
#school.add_student("Zach Morris", 9)
#school.roster