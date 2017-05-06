# code here!
class School
  attr_accessor :roster, :name

  def initialize(name)
    @name = name
    @roster = {}
  end

  def add_student(name, grade)
    if !roster.has_key?(grade)
      roster[grade] = []
    end
    roster[grade] << name
  end

  def grade(grade)
    roster[grade]
  end

  def sort
    roster_sorted = {}
    roster.each do |k,v|
      roster_sorted[k] = v.sort
    end
    roster_sorted
  end


end
