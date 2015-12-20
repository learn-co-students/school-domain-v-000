# code here!
class School
  attr_accessor :roster, :school
  
  def initialize(school)
    @school = school
    @roster = {}
  end

  def add_student(student_name, grade)
    #roster[grade] = []
    if roster.include?(grade)  
      roster[grade] << student_name 
    else
      roster[grade] = []
      roster[grade] << student_name
    end
  end

  def grade(school_grade)
    roster[school_grade]
  end

  def sort
    sorted_students = {}
    roster.each do |grade, name|
     sorted_students[grade] = name.sort    
    end
    sorted_students
  end
end