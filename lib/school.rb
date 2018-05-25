class School
  attr_accessor :school, :roster
  
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
    @roster.each do |grade, student_array| 
      sorted_hash[grade] = student_array.sort 
    end 
    sorted_hash
  end
end