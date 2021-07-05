class School
  attr_accessor :roster, :name

  def initialize(name)
    @name = name
    @roster = {}
  end

  def add_student(name, grade)
    if roster[grade]
      roster[grade] << name
    else
      roster[grade] = [name]
    end
  end

  def grade(grade)
    roster[grade]
  end

  def sort
    abc_roster = {}
    roster.each do |grade, names|
      abc_roster[grade] = names.sort
    end
    abc_roster
  end

end
