require 'pry'
class School
  attr_accessor :name, :roster, :grade

  def initialize(name)
    @name = name
    @roster = {}
  end

  def add_student(name, grade)
    if @roster.include?(grade)
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
    Hash[@roster.sort.map {|a,b| [a, b.sort]}]
  end

end

roster =
{
  10 => ["Student B", "Student A"],
  9 => []
}

#if example_roster.include?(9)
#  example_roster[9] << "Student E"
#end
