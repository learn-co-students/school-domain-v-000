# code here!
# require 'pry'

class School
  attr_reader :name, :roster
  
  def initialize(name)
    @name = name
    @roster = {}
  end
  def add_student(name, grade)
    # if roster.has_key?(grade) # because roster is an implicit receiver, 
    # # we are inside an instance method, ruby knowa that we want to call roster "we already inside it's class"
    #   roster[grade] << name
    # else
    #   roster[grade] = [name]
    # end
    self.roster[grade] ||=[]
    self.roster[grade] << name
    # if self.roster[grade] exists, leave it alone!!!
    # else set it to an empty array and shavel the new name inside it.
    end
  
  def grade(grade)
    self.roster[grade]
  end
  
  def sort
    self.roster.each do |grade, students|
      students.sort!
    end
  end
  
end

