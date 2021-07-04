class School
  attr_reader :name, :roster
  def initialize(name)
    @name = name
    @roster = {}
  end
  def add_student(name, grade)
    if !@roster.include?(grade)
    @roster[grade] = []
  end
    @roster[grade] << name 
  end
  def grade(grade)
    return @roster[grade]
  end
  def sort
    @roster.each do |grade, name|
      name.sort!
    end
    return @roster
  end
end