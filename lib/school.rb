# code here!
class School 
  attr_accessor :name, :grade, :roster 

  GRADES = []
  
  def initialize(roster)
    @roster = Hash.new 
    
  end
  
  def add_student(name, grade)
    #@roster[grade] = []
    #@roster[grade] << name 
 

    if grade == GRADES.detect {|g| g == grade}
        @roster[grade] << name
    else
      @roster[grade] = []
      @roster[grade] << name
      GRADES << grade
    end

    
  end
  
end

