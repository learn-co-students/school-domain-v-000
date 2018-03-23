require 'pry'

class School
  
  def initialize(name)
    @name = name
    @roster = {}
  end
  
  def name
    @name
  end
  
  def roster=(roster)
    @roster = roster
  end
  
  def roster
    @roster
  end
  
  def add_student(name, grade)
    #if roster[grade] exists
    if roster[grade]
      #add name to array
      roster[grade] << name
    else
      #new key,value pair
      roster[grade] = []
      roster[grade] << name
    end
    roster
  end
  
  def grade(grade)
    roster[grade]
  end
  
  def sort
    roster.each {|grade, names| names.sort!}
    end
  
end
