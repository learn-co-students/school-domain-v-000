# code here!
class School
  attr_accessor :roster
  attr_reader :name

  def initialize(name)
    @name = name
    @roster = {}
  end

  def add_student(name, grade)
    if !@roster.has_key?(grade)
      roster[grade] = []
    end

    @roster[grade] << name
  end

  def grade(grade)
    if !@roster.has_key?(grade)
      return []
    end

    @roster[grade]
  end

  def sort
    @roster.each_value do |grade|
      grade.sort!
    end

    @roster
  end
end
