class School
  attr_accessor :name, :roster
 
  def initialize(name)
    @name = name
    @roster = {}
  end
  
  def add_student(name, grade)
    roster[grade] ||= []
    roster[grade] << name
  end
  
  def grade(students_grade)
    roster[students_grade]
  end
  
  def sort 
  nu_hash = {}
  roster.each do |x, y| 
    nu_hash[x] = y.sort 
  end 
  nu_hash
end 
  
end  

# school = School.new("Bayside High School")





