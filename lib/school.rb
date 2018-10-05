class School
  def initialize(name)
    @name = name
    @roster = {}
  end
  
  attr_reader :name, :roster
  
  def add_student(name, grade)
    @roster[grade] = [] unless @roster.has_key?(grade)
    @roster[grade] << name
  end
  
  def grade(grade)
    @roster[grade]
  end
  
  def sort
    @roster.each_key { |k| @roster[k] = @roster[k].sort }
  end
end