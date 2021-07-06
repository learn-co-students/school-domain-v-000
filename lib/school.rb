# code here!

class School
  
  attr_reader :name
  
  
  def initialize(name)
    @name = name
    @roster = {}
  end 

 def roster
   @roster
 end
  
  def add_student(name, grade) 
     if @roster.keys.include?(grade)
        @roster[grade] << name
     else
       @roster[grade] = [name]
     end
  end
  
  def grade (grade)
    @roster[grade]
  end
  
  def sort
    sorted_students={}
    @roster.each do |grade, names|
      sorted_students[grade]=names.sort
    end
    sorted_students
  end
end