class School
  attr_accessor :roster
  attr_reader :school_name
  
  def initialize(name)
    @school_name = name  
    @roster = {}
  end
  
  def add_student(name, grade)
    if @roster[grade]
      @roster[grade] << name
    else
      @roster[grade] = [name]
    end
    @roster
  end
  
  def grade(grade)
    @roster[grade]
  end
  
  def sort
    @roster.each_pair do |k, v|
      temp = v.sort
      @roster[k] = temp
    end
    @roster
  end
end