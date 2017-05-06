# code here!
class School

  attr_accessor :name, :roster

  def initialize(schoolname)
  	@schoolname = schoolname
  	@roster = {}
  end

  def add_student(name, grade)
  	if !@roster.has_key?(grade)
  	  @roster[grade] = []
      @roster[grade] << name
  	else
  	  @roster[grade] << name
    end
  end

  def grade(grade)
  	@roster[grade]
  end
  
  def sort
  	sorted_roster = {}
  	@roster.each {|grade, names| sorted_roster[grade] = names.sort}
  	sorted_roster
  end

end