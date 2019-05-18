# code here!
class School
  attr_reader :name, :roster

  def initialize(name)
    @name = name
    @roster ={}

  end

  def add_student(name, grade)
    @roster[grade] ||= []
    @roster[grade] << name
  end

  def grade(grade)
    @roster[grade]
  end

  def sort
    @roster.collect {|k, v| v.sort!}
    @roster
  end
end
