require 'pry'

class School 
  
attr_accessor :school, :roster
  
  def initialize(school)
   @school = school
   @roster = Hash.new 
  end
 # binding.pry
  
  def add_student(student, grade)
    #Adds a student to an empty hash + name?
    roster[grade] ||= []
    #What the heck did ||= (or equals) do in this case?
    #Ruby’s ||= operator is a handy way to assign variables if they are not defined yet, but not change the variable if they are already defined. (so we can have grade as an argument passed through that's defined by the user, or grade can equal an empty [] array?)  this needs some extra help.
    #What is the local var roster doing? It's adding a new key to the hash as a placeholder so we can then add the student name into the array of names.
    roster[grade] << student
end

def grade(current_grade)
  roster[current_grade]
end

def sort
    sorted = {}
    roster.each do |grade, students|
      sorted[grade] = students.sort
    end
    sorted
  end
end