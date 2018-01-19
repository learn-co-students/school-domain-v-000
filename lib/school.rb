class School

  attr_reader :name, :roster

  def initialize(name)
  	@name = name
  	@roster = {}
  end

  def add_student(name, grade)
  	if !roster[grade]
  		roster[grade] = []
  		roster[grade] << name
  	else 
  		roster[grade] << name
  	end
  end

  def grade(grade)
  	roster[grade]
  end

  def sort
  	sorted_hash = {}
  	roster.collect do |grade, students| 
  		sorted_hash[grade] = students.sort
  	end
    sorted_hash
  end

end
