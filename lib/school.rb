class School
  attr_accessor :roster, :add_student, :grade, :sort 
  
  def initialize(school)
    @school = school
    @roster = {}
  end 
  
  def roster=(name, grade)
    @roster = {grade: [name]}
  end
  
  def add_student(name, grade)
    @roster[grade] ||= []
    @roster[grade] << name 
  end 
  
  def grade(grade)
    return @roster[grade]
  end
  
  def sort
    sorted = @roster.sort
    sorted.each {|s| s[1].sort!}.to_h 
  end 

end