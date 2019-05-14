# code here!
class School
  attr_reader :school_name, :roster
  
  def initialize(school_name)
    @school_name = school_name
    @roster = {}
  end 


  def add_student(student_name, grade)
    if @roster.key?(grade) == true 
      @roster[grade] << student_name
    else 
      @roster[grade] = []
      @roster[grade] << student_name
    end   
  end 
  
  def grade(level)
    @roster.select do |grade, student_name|
      if level == grade
        return student_name
      end 
    end     
  end
  
  def sort
    results = {}
    @roster.each do |grade, student_name|
      results[grade] = student_name.sort
    end 
    results
  end 
  
end 