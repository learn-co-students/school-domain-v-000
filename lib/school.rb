# code here!

class School 
  def initialize(school)
    @school = school
    @roster = {}
  end
  
  attr_accessor :school, :roster
  
  def add_student(name, grade)
    if roster[grade] == nil
      roster[grade] = [name]
    else
      roster[grade] << name
    end
  end
  
  def grade(grade)
    @roster[grade]
  end
  
  def sort 
    roster.sort.to_h.each { |key, value| value.sort!}
  end

end