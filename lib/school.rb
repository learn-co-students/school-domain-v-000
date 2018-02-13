# code here!
class School
  
   attr_accessor :roster
   
  def initialize(name)
    @name = name
    @roster = {}
  end
  

  def add_student(student, grade)
    @student = student
    @grade = grade
    if @roster.keys.include?(grade)
      @roster.each do |grade_key, student_array|
        if grade_key == grade
          student_array << student
        end
      end
    else
      @roster[grade] = []
      @roster[grade] << student
    end
  end
  
  def grade(grade)
    @roster[grade].flatten
  end
  
  def sort
    @roster.each do |grade_key, student_array|
      student_array.sort!
      end
      
   
  end
    
    
end