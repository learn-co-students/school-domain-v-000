class School 
  attr_accessor :name, :roster, :grade

  def initialize(name)
    @roster = {}
  end 

  def add_student(name, grade)
    roster[grade] ||= []
    roster[grade] << name
  end 
  
  def grade(grade)
    return roster[grade]
  end 
  
  def sort
    sorted_hash = {}
    roster.each do |grade, name|
      sorted_hash[grade] = name.sort 
    end 
    sorted_hash
   end 
end
