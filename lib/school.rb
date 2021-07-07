class School
  attr_reader :school, :roster
  
  def initialize(school) 
    @school = school 
    @roster = {}
  end
  
  def add_student(name, grade)
   @roster[grade] ||= []
   @roster[grade] << name
  end
  
  def grade(grade)
    @roster[grade]
  end
  
  def sort 
    sorted_hash = {}
    @roster.each do |a,b|
      sorted_hash[a] = b.sort  
    end
    sorted_hash
  end
    
end