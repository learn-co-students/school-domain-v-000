class School
  attr_reader :name
  
  def initialize(name)
    @name = name
    @roster = {}
  end

  def roster
    @roster
  end
  
  def add_student(name, grade)
    if self.roster[grade] == nil
      self.roster[grade] = [name]
    else
      self.roster[grade] << name
    end
  end
  
  def grade(grade)
    self.roster[grade]
  end
  
  def sort
    self.roster.each do |grade, name|
      name.sort!
    end
    self.roster
  end
  
end