# code here!
class School
  attr_reader :school, :roster
  
  def initialize(school)
    @school = school
    @roster = {}
  end

  def add_student (name, grade)
    #check if grade is empty
    @roster[grade] ||= []
    @roster[grade] << name
  end

  def grade(grade)
    @roster[grade]
  end

  def sort 
    sort = {}
   @roster.each do |grade, name|
     sort[grade] = name.sort
   end
   sort
 end
  
end 