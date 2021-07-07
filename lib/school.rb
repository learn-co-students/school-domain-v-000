class School

attr_accessor :roster

  def initialize(name)
    @name = name
    @roster = {}
  end

  def add_student(student, grade)
    if self.roster.values.class == Array && self.roster.keys.include?(grade)
    	self.roster[grade] << student
    else
    	self.roster[grade] = []
    	self.roster[grade] << student
    end
    self.roster
  end

  def grade(grade)
    self.roster[grade]
  end

  def sort
    self.roster.values.collect { |students| students.sort! }
    self.roster
  end

end
