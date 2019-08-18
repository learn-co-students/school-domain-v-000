class School
  attr_reader :name, :roster

  def initialize(name)
  	@name = name
  	@roster = {}
  end

  def add_student(name, grade)
  	if roster.keys.include?(grade)
  	  @roster[grade] << name
  	else 
  	  @roster[grade] = []
  	  @roster[grade] << name
  	end
  end

  def grade(grade)
  	@roster[grade]
  end

  def sort
  	alphabetical = @roster.each do |grade, names|
  		names.sort!
  	end
  	alphabetical.sort.to_h
  end
end
