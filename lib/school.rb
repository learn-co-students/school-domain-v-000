# code here!
require "pry"
class School

  attr_reader :roster, :name

  def initialize(name)
    @name = name
    @roster = {}

  end




  def add_student(name, grade)
    # binding.pry
    @roster[grade] ||= []
    @roster[grade] << name

  end

  def grade(num)
    @roster[num]
  end

  def sort
    @roster.each_value {|grade| grade.sort!}
  end
end
