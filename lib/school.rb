require 'pry'

class School 
  
attr_accessor :school, :roster
  
  def initialize(school)
   @school = school
   @roster = Hash.new 
  end
 # binding.pry
  
  def add_student(student, grade)
    @roster[grade] ||= []
    # The above is the hash["key"] = "value" method to add a key to the @roster hash.
    this is telling roster what the kEY(grade) is, as well as its value.  the value is a blank array so that we can push the student names into it.
    @roster[grade] << student
end

def grade(current_grade)
  @roster[current_grade]
end

def sort
    sorted = {}
    @roster.each do |grade, students|
      sorted[grade] = students.sort
      # Here we are iterating over the instance var of @roster and assigning the values to grade and students.  the sorted empty hash will have grade as key, and the students are sorted by their names... but why equal?
    end
    sorted
  end
end

#This lab needs more pictures, I think in order to help facilitate understanding.