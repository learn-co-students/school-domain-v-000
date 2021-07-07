require 'pry'

class School
  attr_reader :name #instance method
  #attr_accessor :roster #instance method
  
  def initialize(name)
    @roster = {}
    @name = name
  end

  def roster=(roster) #roster_equals=roster_placeholder- this is the setter/writer
    @roster = roster  #roster_instance_variable is set equal to passed in roster_placeholder
  end

  def roster #this is the getter/reader-no EQUAL SIGN
  @roster #causes the return of the getter method to be whatever is in @roster
  end
  
  def add_student(name,grade)
    if @roster[grade] == nil
    @roster[grade] = []
    end
      @roster[grade] << name
  end
  
  def grade(grade)
    return @roster[grade]
  end
  
  def sort
    @roster.each do |grade, students|
    @roster[grade] = students.sort
    end
  end
  
end
