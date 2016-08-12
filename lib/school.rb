# code here!
class School
  attr_reader :roster

  def initialize(name)
    @name = name
    @roster = Hash.new {|h,k| h[k]=[]}
  end

  def add_student(name,grade)
    @roster[grade] << name
  end

  def grade(grade)
    @roster[grade]
  end

  def sort
    @roster.each { |key,array| array.sort! }
  end
end
