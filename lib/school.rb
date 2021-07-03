# code here!
class School
  attr_accessor :roster
  attr_reader :name

def initialize(name)
    @name = name
    @roster = {}
  end

def add_student(student_name,student_grade)
  if roster[student_grade]
  (roster[student_grade]) << student_name
else 
    roster[student_grade] =[]
    roster[student_grade] << student_name
end 
end

  def grade(num)
    roster[num]
  end

  def sort
    roster.each do |grade, student_name_array|
      roster[grade]=(student_name_array.sort)
    end 
  end


end 

# !(roster[student_grade] =[]) 
#roster.include?(student_grade)