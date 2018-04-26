class School
  attr_reader :roster
  
  def initialize(name)
    @name = name 
    @roster = {}
  end
  
  def add_student(name, grade)
    if @roster[grade] != nil 
      return @roster[grade] << name
    end 
    @roster[grade] = [name]
  end
  
  def grade(grade)
    @roster[grade]
  end
  
  def sort 
    @roster.each do |name, grade|
      grade.sort!
    end
  end
end