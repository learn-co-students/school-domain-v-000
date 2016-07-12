# code here!

class School
  def initialize(name)
    @name = name
    @roster = {}
  end

  attr_accessor :roster

  def add_student(name, grade)
    if roster[grade].kind_of?(Array)
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
    @roster.each do |grade, names|
      roster[grade] = names.sort
    end
  end

end