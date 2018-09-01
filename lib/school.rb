# code here!
class School
  attr_accessor :roster

  def initialize(name)
    @name = name
    @roster = {}
  end

  def add_student(name, grade)
    @roster[grade] = [] if @roster[grade].nil?
    @roster[grade] << name
  end

  def roster
    @roster
  end

  def grade(grade)
    @roster[grade]
  end

  def sort
    @roster.each do |key, values|
      values.sort!
    end
    @roster
  end
end
