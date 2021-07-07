# code here!
class School 
  attr_reader :name, :roster 
  
  
  def initialize(name)
    @name = name
     roster = { }
    @roster = roster
  end 
  
  def add_student(student_name, grade)
    roster[grade]= roster[grade] || roster[grade]=[]
    roster[grade] <<student_name
  end 

def grade(grade)
return roster[grade]
end 

def sort
sorted= {}
roster.each do |grade, students|
sorted[grade]= students.sort
end 
sorted 
end


end 

