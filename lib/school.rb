# code here!
class School
  
  attr_accessor :name, :roster
  
  def initialize(name)
    @name = name
    @roster = {}
  end
  
  def add_student(student_name, grade)
    roster[grade] ||= []
    roster[grade] << student_name
  end 
  
  def grade(grade)
    roster[grade]
  end
  
  def sort 
    sorted_list = {}
    roster.each do |grade, name|
      sorted_list[grade] = name.sort
    end
    sorted_list
  end
end