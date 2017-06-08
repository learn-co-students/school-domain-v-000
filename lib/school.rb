# code here!
class School
  attr_accessor :name, :roster # , :student_name, :grade


 def initialize(name)
   @name = name
   @roster = {}
 end

 def add_student(student_name,grade)
    if @roster[grade] == nil
      @roster[grade] = []
      @roster[grade] << student_name
   else
     @roster[grade] << student_name
   end
end

def grade(gradeforstudent)
  @roster[gradeforstudent]
end

def sort

  @roster.collect do |grade,student|
    @roster[grade] = student.sort
  end
  @roster
end

end

#school = School.new("The Bayside School")
