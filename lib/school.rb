class School

  attr_reader :roster
  
  def initialize(roster)
    roster = {}
    @roster = roster
  end

  def add_student(name, grade)
    if @roster.key?(grade)
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
    new_roster = {}
    @roster.each {|grade, student| new_roster[grade] = student.sort}
    return new_roster
  end
    
end











