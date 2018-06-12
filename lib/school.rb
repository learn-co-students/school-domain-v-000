# code here!

class School
  attr_accessor :name, :roster
  
  def initialize(name)
    @name = name
    @roster= {}
  end
  
  def add_student(name, grade)
    if  @roster.key?(grade)
      @roster[grade] << name
    else
      @roster[grade] = []
      @roster[grade] << name
    end
  end
  
  def grade(grade)
    @roster[grade]
  end
  
  def sort
    new_roster = {}
    @roster.each { |key, value|  new_roster[key] = value.sort}
    new_roster
  end

end