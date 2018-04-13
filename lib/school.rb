# code here!

class School

  def initialize(name)
    @school = name
    @roster = {}
  end

  def add_student(name, grade)
    @roster[grade] = []
    @roster[grade] << name
  end

  attr_reader :roster


end
