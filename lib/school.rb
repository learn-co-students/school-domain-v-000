# code here!
class School

  attr_accessor :name, :roster

  def initialize(name)
    @name = name
    @roster = {}
  end

  def add_student(name, grade)
    roster[grade] = [] unless roster[grade]
    roster[grade] << name
  end

  def grade(n)
    roster[n]
  end

  def sort
    sorted = {}
    roster.each do |k, v|
      sorted[k] = v.sort
    end
    sorted
  end

end
