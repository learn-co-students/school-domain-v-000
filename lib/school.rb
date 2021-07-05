require 'pry'
# code here!
class School 
  attr_accessor :name, :grade, :roster 

  #GRADES = []
  
  def initialize(roster)
    @roster = Hash.new 
    
  end
  
  def add_student(name, grade)
   # @roster[grade] = []
    #@roster[grade] << name
#binding.pry

  if @roster[grade] == nil 
    @roster[grade] = []
  end
    @roster[grade] << name 
    

=begin
    @roster[grade].each do |g, n|
      if grade == g 
        @roster[grade] << name
      else
        @roster[grade] = []
        @roster[grade] << name 
      end
    end

  if g@rade == @roster.detect {|n, g| g == grade}
      @roster[grade] << name
    else
      @roster[grade] = []
      @roster[grade] << name
    end
=end
    
  end
  
 def grade(grade)
   @roster[grade].flatten 
 end
  
  def sort
    sorted = Hash.new
    @roster.each do |g,n| sorted[g] = n.sort
  end
  sorted
  end
  
end

