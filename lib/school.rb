
class School
  attr_accessor :name, :roster
  
  def initialize(name)
    @name = name 
    @roster = {}
  end 
  
  def add_student (name, grade)
    roster[grade] ||= []
    roster[grade] << name
  end 
  
  def grade(grade)
     roster[grade]
   end 
  
  #solution with transform_values - does not work on this version of Ruby 
  # def sort
  #   roster.transform_values! do |grade_array|
  #     grade_array.sort 
  #   end 
  # end
  
  def sort
   roster.each do |number, student_array|
        roster[number] = student_array.sort 
    end 
    
  end 
  
end 
