class School
  attr_accessor :roster
  attr_reader :name, :grade
  
  def initialize(name)
    @name = name
    @roster = {}
  end
  
  def add_student(name, grade)
 
    if !@roster.key?(grade)
      @roster[grade] = [name]
    else
      @roster[grade] << name
    end
  end
  
  def grade(grade)

    @roster[grade]
  end
  
  def sort
    @roster.collect do |grade, array|
      @roster[grade] = array.sort
    end
    @roster
  end
end