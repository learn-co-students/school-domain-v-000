class School 
  attr_reader :roster 
  
  def initialize(school_name)
    @school_name = school_name
    @roster = {}
  end 
  
  def add_student(student, grade)
    @roster[grade] ||=[]
    @roster[grade] << student 
  end 
  
  def grade(grade)
    @roster[grade]
  end 
  
  def sort 
    sorted_students = {}
    @roster.each do |grade, student|
      sorted_students[grade] = student.sort 
    end 
    sorted_students
  end 
  
end