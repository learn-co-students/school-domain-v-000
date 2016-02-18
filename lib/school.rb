# code here!

class School
  attr_accessor :name, :roster

  def initialize(name)
    @name = name
    @roster = {}
  end

  def add_student(studant_name, age)
    roster[age] ||= []
    roster[age] << studant_name
  end

  def grade(age)
    roster[age]
  end

  def sort
    sorted = {}
    roster.each do |a,b|
      sorted[a] = b.sort
  end
  sorted
  end
end