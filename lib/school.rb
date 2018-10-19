# code here!
class School
  attr_accessor :name, :roster

  def initialize(roster)
    @name = name
    @roster = {}
  end
  
  def add_student(student_name, student_grade)
    roster[student_grade] ||= []
    roster[student_grade] << student_name
  end
  
  def grade(student_grade)
    roster.detect do |x, y| 
      if x == student_grade
        return y 
      end 
    end 
  end 
  
  def sort 
    nu_hash = {}
    roster.each do |x, y| 
      nu_hash[x] = y.sort 
  end 
  
  nu_hash

end 


end