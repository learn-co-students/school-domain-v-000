# code here!
class School
   attr_accessor :name , :grade
    attr_reader :roster
  
     def initialize(roster)   
         @roster = {}
     end #this ends the initialize method
     
    def add_student(name,grade)
     if @roster.include?(grade)
        @roster[grade] << name
     else
      @roster[grade] = []
      @roster[grade] << name
     end #his ends the if/else
    end #this ends the add_student method
  
 def grade(grade)
  #should take in an argument of a grade and return all of the students in that grade
    @roster[grade]
 end #this ends the grade method
 
 def sort
   #it should also be able to get a sorted #list of all the students are sorted alphabetially
    @roster.each do |grade,student|
    student.sort!
   end
 end
    
end #this ends the School Class 
