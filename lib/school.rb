# code here!
class School
  attr_reader :name, :roster
  
  def initialize(name)
    @name = name
    @roster = {}
  end 
  
  def add_student(name, grade)
    roster[grade] ||= []
    roster[grade].push(name)
  end 
  
  def grade(grade)
    roster.values_at(grade).flatten
  end 
  
  def sort 
    roster.each do |key, value|
      value.sort!
    end 
  end 
  
end 