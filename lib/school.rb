# code here!

class School 
  attr_accessor :school, :roster
  
  def initialize(school)
    self.school = school
    self.roster = {}
  end
  
  def add_student(name, grade)
    roster[grade] == nil ? roster[grade] = [name] : roster[grade] << name 
  end
  
  def grade(grade)
    @roster[grade]
  end
  
  def sort 
    roster.each { |key, value| value.sort! }
  end

end