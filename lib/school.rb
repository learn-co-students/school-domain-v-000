class School
  attr_accessor :roster
  attr_reader :name
  
  def initialize(name)
    @name = name
    @roster = {}
  end

  def add_student(name, grade)
    @roster[grade] = [] if @roster[grade] == nil
    @roster[grade] << name
    @roster.sort
  end

  def grade(grade)
    @roster[grade]
  end
  
  def sort
    @roster.each do |a, b| 
      b.sort!
    end
  end
end