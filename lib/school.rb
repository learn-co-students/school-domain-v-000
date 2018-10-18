class School 
  
  attr_accessor :roster
  
  def initialize(school)
    self.roster = {}
  end
  
  def add_student(name, grade)
    if self.roster.keys.include?(grade)
      self.roster[grade] << name
    else 
      self.roster[grade] = [] 
      self.roster[grade] << name 
    end 
  end 
  
  def grade(grade)
    self.roster[grade]
  end 
  
  def sort
    y = {}
    k = self.roster.keys.sort 
    k.each do |key|
      y[key] = []
    end 
    self.roster.each do |grade, array|
      a = array.sort 
      a.each do |name|
      y[grade] << name 
      end 
    end 
    y 
  end 
end 