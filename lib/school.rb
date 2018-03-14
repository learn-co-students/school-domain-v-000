class School
  
  attr_accessor :roster

  def initialize(name)
    @name = name
    @roster = {}
  end
  
  def add_student(name, grade)
    if @roster.key?(grade.to_i)
      @roster[grade.to_i] << name
    else
    @roster[grade.to_i] = []
    @roster[grade.to_i] << name
    end
  end
  
  def grade(grade)
    @roster[grade.to_i]
  end
  
  def sort
    @roster.sort_by {|k, v| v.sort!}.to_h
  end
  
end