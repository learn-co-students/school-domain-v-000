require 'pry'
# code here!
class School 
  attr_accessor :name, :grade, :roster 

  #GRADES = []
  
  def initialize(roster)
    @roster = Hash.new 
    
  end
  
  def add_student(name, grade)
    #@roster[grade] = []
    #@roster[grade] << name
 
if grade == @roster.detect {|n, g| g == grade}
binding.pry
      @roster[grade] << name
    else
      @roster[grade] = []
      @roster[grade] << name
    end

    
  end
  
end

