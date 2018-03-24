class School
  def initialize(name)
    @name = name
    @roster = {}
  end

  attr_accessor :roster

  def add_student(name, grade)
    if roster[grade].nil?
      roster[grade] = []
      roster[grade] << name
    else
      roster[grade] << name
    end
  end

  def grade(grade)
    roster[grade]
  end

  def sort
    roster.sort_by do |grade, name|
      name
    end
  end
end
