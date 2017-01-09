class School
  attr_accessor :roster

  def initialize(name)
    @name = name
    @roster = {}
  end

  def add_student(name, grade)
    if @roster[grade]
      @roster[grade] << name
    else
      @roster[grade] = []
      @roster[grade] << name
    end
  end

  def grade(grade)
    return @roster[grade]
  end 

  def sort
    @roster.each do |grade, roster|
      @roster[grade].sort!
    end
      
  end
end