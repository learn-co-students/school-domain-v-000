# code here!

class School

  attr_accessor :name, :roster

  def initialize(name)
    @name = name
    @roster = {}
  end

  def add_student(name, grade)
    #if roster already has grade 9,
    if roster[grade] #check if it already exists
      roster[grade] << name #can shovel in if it already exists and points to array
    else
    #Otherwise create the key of grade 9, and point to an empty array
      roster[grade] = []
      roster[grade] << name
    end
  	 roster #return roster at the end
  end

  def grade(grade)
    @roster[grade]
  end

  def sort
    @roster.each do |grade, name|
      name.sort! #{|a,b| a <=> b}
    end
  end




end
