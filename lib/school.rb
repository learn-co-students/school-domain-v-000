class School
  attr_accessor :roster
  
  def initialize(name)
    @name = name
    @roster = {}
  end
  
  def add_student(k, v)
    if !@roster.has_key?(v)
    @roster[v] = []
    end
    @roster[v] << k
  end

  def grade(grade)
    return @roster[grade]
  end
  
  def sort
    @roster.each { |k, v|
      v.sort!
    }
    @roster
  end
end