# code here!

class School
  attr_accessor :school, :roster
  
  def initialize(name)
    @name = name
    @roster = {}
  end

  def add_student=(add_student)
    @add_student = add_student
  end

  def add_student(name, year)
    @add_student
    if roster[year] == nil
      roster[year] = []
      roster[year] << name
    else 
      roster[year] << name
    end
  end
  
  def grade(grade)
    roster[grade]
  end

  def sort
    sorted_name = {}
    roster.each do |year, names|
      sorted_name[year] = names.sort
    end
    sorted_name
end
end