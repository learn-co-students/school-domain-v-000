class School 
  
  attr_accessor :name, :roster, :student_name, :grade 
  
  def initialize(name)
    @name = name 
    @roster = {} 
  end 
  
  def add_student(student_name, grade)
    @grade = grade 
    @student_name = student_name
    @roster[@grade] ||= []
    @roster[@grade] << @student_name
  end 
  
  def grade(grade)
    @grade = grade 
    @roster[@grade]
  end 
  
  def sort 
    @roster.each do |key, value|
      value.sort!
    end
  end 
  
end 