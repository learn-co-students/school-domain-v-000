class School
  attr_accessor :name, :roster
  
  
  def initialize(name)
    @name = name
    @roster = {}
  end
  
  def add_student(student, grade_level)
    roster[grade_level] ||= []
    roster[grade_level] << student
   end
   
   def grade(grade_level)
     roster[grade_level]
   end
   
   def sort
     roster.each do |grade, student_name|
       student_name.sort! { |a,b| a <=> b  }
     end
    end
end