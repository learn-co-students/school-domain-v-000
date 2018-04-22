class School 
  attr_accessor 
  attr_reader :name, :roster
  
  def initialize(name, roster = {})
  @name = name 
  @roster = roster
  end 
  
  def add_student(student_name,grade)
    if !@roster.include?(grade)
     @roster[grade] = []
     @roster[grade] << student_name
    else  
     @roster[grade] << student_name
    end 
  end 
  
  def grade(grade)
    @roster[grade]
  end 
  
  def sort 

    @roster.map do |grade, value| 
      @roster[grade] = value.sort
      end
      @roster
  end 
    
end 